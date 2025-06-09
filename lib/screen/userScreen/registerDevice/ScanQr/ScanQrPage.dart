import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/model/deviceScanQr/DeviceScanQr.dart';
import 'package:haohsing_flutter/provider/BluetoothProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/screen/userScreen/registerDevice/ScanQr/ScanQrProvider.dart';
import 'package:haohsing_flutter/utils/dialog/DialogManager.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/registerDevice/ScannerErrorWidget.dart';
import 'package:haohsing_flutter/widgets/registerDevice/ScannerOverlay.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class ScanQrPage extends HookConsumerWidget {
  const ScanQrPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scanWindowWidth = MediaQuery.of(context).size.width * 0.75;
    final scanWindow = Rect.fromCenter(
      center: MediaQuery.sizeOf(context).center(Offset.zero),
      width: scanWindowWidth,
      height: scanWindowWidth,
    );

    final bluetoothNotifier = ref.read(bluetoothProvider.notifier);
    final scanQrNotifier = ref.read(scanQrProvider.notifier);

    bool isParse = false;

    MobileScannerController cameraController = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      torchEnabled: false,
      formats: [BarcodeFormat.qrCode],
      facing: CameraFacing.back,
    );

    useEffect(() {
      cameraController.start();
      cameraController.barcodes.listen((barcodeScanResult) async {
        if (barcodeScanResult.barcodes.isNotEmpty && !isParse) {
          isParse = true;
          var deviceScanQr = validateAndParseDeviceScanQr(barcodeScanResult.barcodes[0].rawValue ?? "");
          if (deviceScanQr != null) {
            await scanQrNotifier.isMacExist(mac: deviceScanQr.id).then((isExist) {
              if (isExist != null) {
                if (isExist.status == 0) {
                  bluetoothNotifier.resetState();
                  bluetoothNotifier.updateDeviceScanQr(deviceScanQr);

                  AutoRouter.of(context).replace(const FindDeviceRoute());
                } else if (isExist.status == 11) {
                  showDefaultDialog(context,
                      barrierDismissible: false,
                      title: AppTexts.youAlreadyRegisterDevice,
                      content: AppTexts.youAlreadyRegisterDeviceMsg,
                      firstButton: roundedButton(
                          text: AppTexts.confirm,
                          radius: 16,
                          bgColor: AppColors.primaryYellow,
                          fontColor: AppColors.white,
                          onTap: () {
                            bluetoothNotifier.disconnectFromDevice();
                            goUserMain(context, ref);
                          }));
                } else if (isExist.status == 12) {
                  // TODO: 暫時不做是否轉移設備功能
                  showErrorDialog(context, title: AppTexts.deviceAlreadyRegistered, onTap: () {
                    bluetoothNotifier.disconnectFromDevice();
                    goUserMain(context, ref);
                  });
                }
              }
            });
          } else {
            showErrorDialog(context,
                title: AppTexts.scanFailed, content: AppTexts.qrCodeCannotRead, buttonText: AppTexts.rescan);
          }
        }
      });
      return () {
        cameraController.dispose();
      };
    }, []);

    return BasePage(
      child: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                child: MobileScanner(
                  controller: cameraController,
                  scanWindow: scanWindow,
                  errorBuilder: (context, error, child) {
                    return ScannerErrorWidget(error: error);
                  },
                  overlayBuilder: (context, constraints) {
                    return const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(),
                      ),
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: double.infinity,
                child: CustomPaint(
                  painter: ScannerOverlay(scanWindow: scanWindow),
                ),
              ),
              IntrinsicHeight(
                child: MainTitleBar(title: AppTexts.searchDevice, isBack: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
