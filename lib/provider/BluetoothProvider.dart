import 'dart:async';
import 'dart:convert';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:haohsing_flutter/model/deviceScanQr/DeviceScanQr.dart';
import 'package:haohsing_flutter/utils/AppLog.dart';
import 'package:haohsing_flutter/utils/Validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

final bluetoothProvider = StateNotifierProvider<BluetoothNotifier, BluetoothState>((ref) {
  return BluetoothNotifier();
});

class BluetoothState {
  final BluetoothAdapterState adapterState;
  final List<ScanResult> scanResults;
  final bool isScanning;
  final BluetoothDevice? connectedDevice;
  final BluetoothCharacteristic? writableCharacteristic;
  final BluetoothCharacteristic? notifyCharacteristic;
  final StreamSubscription<List<int>>? subscription;
  final String receivedMessage;
  final DeviceScanQr? deviceScanQr;
  final String messageBuffer;
  final int sequenceNumber;
  final int updateCounter;

  BluetoothState({
    required this.adapterState,
    required this.scanResults,
    required this.isScanning,
    this.connectedDevice,
    this.writableCharacteristic,
    this.notifyCharacteristic,
    this.subscription,
    this.receivedMessage = '',
    this.deviceScanQr,
    this.messageBuffer = "",
    this.sequenceNumber = 0,
    this.updateCounter = 0,
  });

  BluetoothState copyWith({
    BluetoothAdapterState? adapterState,
    List<ScanResult>? scanResults,
    bool? isScanning,
    BluetoothDevice? connectedDevice,
    BluetoothCharacteristic? writableCharacteristic,
    BluetoothCharacteristic? notifyCharacteristic,
    StreamSubscription<List<int>>? subscription,
    String? receivedMessage,
    DeviceScanQr? deviceScanQr,
    String? messageBuffer,
    int? sequenceNumber,
    int? updateCounter,
  }) {
    return BluetoothState(
      adapterState: adapterState ?? this.adapterState,
      scanResults: scanResults ?? this.scanResults,
      isScanning: isScanning ?? this.isScanning,
      connectedDevice: connectedDevice ?? this.connectedDevice,
      writableCharacteristic: writableCharacteristic ?? this.writableCharacteristic,
      notifyCharacteristic: notifyCharacteristic ?? this.notifyCharacteristic,
      subscription: subscription ?? this.subscription,
      receivedMessage: receivedMessage ?? this.receivedMessage,
      deviceScanQr: deviceScanQr ?? this.deviceScanQr,
      messageBuffer: messageBuffer ?? this.messageBuffer,
      sequenceNumber: sequenceNumber ?? this.sequenceNumber,
      updateCounter: updateCounter ?? this.updateCounter,
    );
  }

  BluetoothState.initial()
      : adapterState = BluetoothAdapterState.unknown,
        scanResults = [],
        isScanning = false,
        connectedDevice = null,
        writableCharacteristic = null,
        notifyCharacteristic = null,
        subscription = null,
        receivedMessage = '',
        deviceScanQr = null,
        messageBuffer = "",
        sequenceNumber = 0,
        updateCounter = 0;
}

class BluetoothNotifier extends StateNotifier<BluetoothState> {
  BluetoothNotifier() : super(BluetoothState.initial()) {
    _init();
  }
  String tempMessageBuffer = "";

  void resetState() {
    state = BluetoothState.initial();
  }

  void setReceivedMessage(String message) {
    state = state.copyWith(receivedMessage: message, updateCounter: state.updateCounter +1);
  }


  Future<void> _init() async {
    await _requestPermissions();

    FlutterBluePlus.adapterState.listen((adapterState) {
      updateAdapterState(adapterState);
    });

    if (state.adapterState == BluetoothAdapterState.on) {
      startScan(deviceName: '');
    }
  }

  Future<void> _requestPermissions() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.bluetoothScan,
      Permission.bluetoothConnect,
      Permission.location,
    ].request();

    if (statuses[Permission.bluetoothScan]!.isGranted &&
        statuses[Permission.bluetoothConnect]!.isGranted &&
        statuses[Permission.location]!.isGranted) {
      // All required permissions granted
    } else {
      // Handle the case where permissions are not granted
    }
  }

  Future<bool> isBluetoothEnabled() async {
    try {
      final adapterState = await FlutterBluePlus.adapterState.first;
      return adapterState == BluetoothAdapterState.on;
    } catch (e) {
      AppLog.e('Error checking Bluetooth state: $e');
      return false;
    }
  }

  void updateAdapterState(BluetoothAdapterState adapterState) {
    state = state.copyWith(adapterState: adapterState);
  }

  void updateScanResults(List<ScanResult> scanResults) {
    state = state.copyWith(scanResults: scanResults);

    for (var result in scanResults) {
      AppLog.i('Device: ${result.device.platformName}, MAC: ${result.device.remoteId}');
    }
  }

  void updateIsScanning(bool isScanning) {
    state = state.copyWith(isScanning: isScanning);
  }

  void updateConnectedDevice(BluetoothDevice? device) {
    state = state.copyWith(connectedDevice: device);
  }

  void updateWritableCharacteristic(BluetoothCharacteristic? characteristic) {
    state = state.copyWith(writableCharacteristic: characteristic);
  }

  void updateNotifyCharacteristic(BluetoothCharacteristic? characteristic) {
    state = state.copyWith(notifyCharacteristic: characteristic);
  }

  void updateDeviceScanQr(DeviceScanQr? qr) {
    state = state.copyWith(deviceScanQr: qr);
  }

  Future<BluetoothDevice?> startScan({required String deviceName}) async {
    if (state.isScanning) return null;

    updateIsScanning(true);
    FlutterBluePlus.startScan(timeout: Duration(seconds: 4));

    final Completer<BluetoothDevice?> completer = Completer();

    FlutterBluePlus.scanResults.listen((results) {
      updateScanResults(results);

      for (var result in results) {
        if (result.device.platformName == deviceName) {
          AppLog.i('Found device: ${result.device.platformName}, MAC: ${result.device.remoteId}');
          stopScan();
          connectToDevice(result.device).then((connected) {
            completer.complete(result.device);
          });
          return;
        }
      }
    }).onDone(() {
      if (!completer.isCompleted) {
        completer.complete(null);
      }
      updateIsScanning(false);
    });

    return completer.future;
  }

  void stopScan() {
    if (!state.isScanning) return;

    FlutterBluePlus.stopScan();
    updateIsScanning(false);
  }

  void disconnectFromDevice() {
    state.connectedDevice?.disconnect();
    state.subscription?.cancel();
    state = state.copyWith(
      adapterState: BluetoothAdapterState.unknown,
      scanResults: [],
      isScanning: false,
      connectedDevice: null,
      writableCharacteristic: null,
      notifyCharacteristic: null,
      receivedMessage: '',
      deviceScanQr: null,
      messageBuffer: "",
      sequenceNumber: 0,
    );
  }

  Future<bool> connectToDevice(BluetoothDevice device) async {
    try {
      await device.connect();
      updateConnectedDevice(device);
      List<BluetoothService> services = await device.discoverServices();
      for (BluetoothService service in services) {
        for (BluetoothCharacteristic characteristic in service.characteristics) {
          AppLog.i('Characteristic: ${characteristic.uuid}, Properties: ${characteristic.properties}');

          if (characteristic.properties.write == true) {
            updateWritableCharacteristic(characteristic);
          }

          if (characteristic.properties.notify || characteristic.properties.read) {
            updateNotifyCharacteristic(characteristic);
            await characteristic.setNotifyValue(true);
            final subscription = characteristic.lastValueStream.listen((value) {
              handleReceivedValue(value);
            });
            state = state.copyWith(subscription: subscription);
            device.cancelWhenDisconnected(subscription);
          }
        }
      }
      return true;
    } catch (e) {
      AppLog.e('Error connecting to device: $e');
      return false;
    }
  }

  void handleReceivedValue(List<int> value) {
    if (value.length < 5) return;

    int flag = value[1];
    List<int> data;

    if (flag == 20) {
      data = value.sublist(6);
      tempMessageBuffer += utf8.decode(data, allowMalformed: true);
    } else if (flag == 4) {
      data = value.sublist(4);
      tempMessageBuffer += utf8.decode(data, allowMalformed: true);
      // 檢查是否是完整的JSON字符串
      if (tempMessageBuffer.isValidJson()) {
        setReceivedMessage(tempMessageBuffer);
        AppLog.i('Received complete message: $tempMessageBuffer');
        // 處理完成後清空 buffer
        tempMessageBuffer = "";
      } else {
        AppLog.w('Incomplete message, waiting for more data：$tempMessageBuffer');
      }
      // state = state.copyWith(
      //   messageBuffer: tempMessageBuffer,
      // );
      // setReceivedMessage(tempMessageBuffer);
      // AppLog.i('Received complete message: $tempMessageBuffer');

      tempMessageBuffer = "";
    }
  }

  Future<void> writeToCharacteristic(String value) async {
    state = state.copyWith(messageBuffer: "");
    AppLog.i('send: $value');
    var ascValue = ascii.encode(value);
    try {
      if (state.writableCharacteristic != null) {
        int numberOfChunks = (ascValue.length / 14).ceil();
        for (int i = 0; i < numberOfChunks; i++) {
          int start = i * 14;
          int end = start + 14;
          List<int> chunk = ascValue.sublist(start, end > ascValue.length ? ascValue.length : end);
          List<int> sendData = chunk.toList();

          if (i < numberOfChunks - 1) {
            sendData.insertAll(0, [77, 16, state.sequenceNumber, 16, ascValue.length - (i) * 14, 0]);
          } else {
            sendData.insertAll(0, [77, 0, state.sequenceNumber, sendData.length]);
          }

          await state.writableCharacteristic!.write(sendData, allowLongWrite: true).then((_) {
            state = state.copyWith(sequenceNumber: state.sequenceNumber + 1);
            AppLog.i('Wrote chunk: $sendData');
          });
        }
      } else {
        setReceivedMessage("No writable characteristic");
        AppLog.e('No writable characteristic found.');
      }
    } catch (e) {
      setReceivedMessage("Error writing to characteristic");
      AppLog.e('Error writing to characteristic: $e');
    }
  }
}
