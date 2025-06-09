// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i39;
import 'package:flutter/cupertino.dart' as _i43;
import 'package:flutter/material.dart' as _i40;
import 'package:haohsing_flutter/model/deviceBlueResponse/DeviceBlueResponse.dart'
    as _i42;
import 'package:haohsing_flutter/model/response/device/deviceInfo/DeviceInfoResponse.dart'
    as _i41;
import 'package:haohsing_flutter/model/response/maintenance/getTaskInformation/GetTaskInformationResponse.dart'
    as _i44;
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/home/EngineerHomePage.dart'
    as _i9;
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/maintenanceOrder/MaintenanceOrderPage.dart'
    as _i18;
import 'package:haohsing_flutter/screen/engineerScreen/engineerHome/taskInformation/TaskInformationPage.dart'
    as _i34;
import 'package:haohsing_flutter/screen/engineerScreen/EngineerMainPage.dart'
    as _i10;
import 'package:haohsing_flutter/screen/engineerScreen/engineerNotify/EngineerNotifyPage.dart'
    as _i11;
import 'package:haohsing_flutter/screen/engineerScreen/taskRecord/TaskRecordPage.dart'
    as _i35;
import 'package:haohsing_flutter/screen/LaunchScreenPage.dart' as _i15;
import 'package:haohsing_flutter/screen/login/CreateAccountPage.dart' as _i5;
import 'package:haohsing_flutter/screen/login/ForgotPasswordPage.dart' as _i13;
import 'package:haohsing_flutter/screen/login/LoginPage.dart' as _i16;
import 'package:haohsing_flutter/screen/login/OnboardingPage.dart' as _i20;
import 'package:haohsing_flutter/screen/login/RegisterPrivacyPolicyPage.dart'
    as _i27;
import 'package:haohsing_flutter/screen/login/RegisterSuccessPage.dart' as _i28;
import 'package:haohsing_flutter/screen/login/SetPasswordPage.dart' as _i32;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/advancedSettings/AdvancedSettingsPage.dart'
    as _i3;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/deviceInfo/DeviceInfoPage.dart'
    as _i6;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/placeAndArea/PlaceAndAreaPage.dart'
    as _i23;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/repairAndMaintenance/RepairAndMaintenancePage.dart'
    as _i29;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/vendorInfo/VendorInfoPage.dart'
    as _i37;
import 'package:haohsing_flutter/screen/userScreen/deviceInfo/warrantyInformation/WarrantyInformationPage.dart'
    as _i38;
import 'package:haohsing_flutter/screen/userScreen/home/areaManager/AreaManagerPage.dart'
    as _i4;
import 'package:haohsing_flutter/screen/userScreen/home/deviceShare/DeviceSharePage.dart'
    as _i7;
import 'package:haohsing_flutter/screen/userScreen/home/home/HomePage.dart'
    as _i14;
import 'package:haohsing_flutter/screen/userScreen/home/permissionShare/PermissionSharePage.dart'
    as _i21;
import 'package:haohsing_flutter/screen/userScreen/home/placeManager/PlaceManagerPage.dart'
    as _i24;
import 'package:haohsing_flutter/screen/userScreen/MainPage.dart' as _i17;
import 'package:haohsing_flutter/screen/userScreen/notify/NotifyPage.dart'
    as _i19;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/addDevice/AddDevicePage.dart'
    as _i1;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/AddSuccessPage.dart'
    as _i2;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/EnableSettingModePage.dart'
    as _i8;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/FindDevicePage.dart'
    as _i12;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/plsTurnOnBluetooth/PlsTurnOnBluetoothPage.dart'
    as _i25;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/ScanQr/ScanQrPage.dart'
    as _i30;
import 'package:haohsing_flutter/screen/userScreen/registerDevice/SearchDevicePage.dart'
    as _i31;
import 'package:haohsing_flutter/screen/userScreen/setting/personalInformation/PersonalInformationPage.dart'
    as _i22;
import 'package:haohsing_flutter/screen/userScreen/setting/PrivacyPolicyPage.dart'
    as _i26;
import 'package:haohsing_flutter/screen/userScreen/setting/setting/SettingPage.dart'
    as _i33;
import 'package:haohsing_flutter/screen/userScreen/userInformation/UserInformationPage.dart'
    as _i36;

/// generated route for
/// [_i1.AddDevicePage]
class AddDeviceRoute extends _i39.PageRouteInfo<void> {
  const AddDeviceRoute({List<_i39.PageRouteInfo>? children})
      : super(
          AddDeviceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddDeviceRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddDevicePage();
    },
  );
}

/// generated route for
/// [_i2.AddSuccessPage]
class AddSuccessRoute extends _i39.PageRouteInfo<AddSuccessRouteArgs> {
  AddSuccessRoute({
    _i40.Key? key,
    required String deviceName,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          AddSuccessRoute.name,
          args: AddSuccessRouteArgs(
            key: key,
            deviceName: deviceName,
          ),
          initialChildren: children,
        );

  static const String name = 'AddSuccessRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddSuccessRouteArgs>();
      return _i2.AddSuccessPage(
        key: args.key,
        deviceName: args.deviceName,
      );
    },
  );
}

class AddSuccessRouteArgs {
  const AddSuccessRouteArgs({
    this.key,
    required this.deviceName,
  });

  final _i40.Key? key;

  final String deviceName;

  @override
  String toString() {
    return 'AddSuccessRouteArgs{key: $key, deviceName: $deviceName}';
  }
}

/// generated route for
/// [_i3.AdvancedSettingsPage]
class AdvancedSettingsRoute
    extends _i39.PageRouteInfo<AdvancedSettingsRouteArgs> {
  AdvancedSettingsRoute({
    _i40.Key? key,
    required _i41.DeviceInfoResponse? deviceInfo,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          AdvancedSettingsRoute.name,
          args: AdvancedSettingsRouteArgs(
            key: key,
            deviceInfo: deviceInfo,
          ),
          initialChildren: children,
        );

  static const String name = 'AdvancedSettingsRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AdvancedSettingsRouteArgs>();
      return _i3.AdvancedSettingsPage(
        key: args.key,
        deviceInfo: args.deviceInfo,
      );
    },
  );
}

class AdvancedSettingsRouteArgs {
  const AdvancedSettingsRouteArgs({
    this.key,
    required this.deviceInfo,
  });

  final _i40.Key? key;

  final _i41.DeviceInfoResponse? deviceInfo;

  @override
  String toString() {
    return 'AdvancedSettingsRouteArgs{key: $key, deviceInfo: $deviceInfo}';
  }
}

/// generated route for
/// [_i4.AreaManagerPage]
class AreaManagerRoute extends _i39.PageRouteInfo<AreaManagerRouteArgs> {
  AreaManagerRoute({
    _i40.Key? key,
    required int placeId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          AreaManagerRoute.name,
          args: AreaManagerRouteArgs(
            key: key,
            placeId: placeId,
          ),
          initialChildren: children,
        );

  static const String name = 'AreaManagerRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AreaManagerRouteArgs>();
      return _i4.AreaManagerPage(
        key: args.key,
        placeId: args.placeId,
      );
    },
  );
}

class AreaManagerRouteArgs {
  const AreaManagerRouteArgs({
    this.key,
    required this.placeId,
  });

  final _i40.Key? key;

  final int placeId;

  @override
  String toString() {
    return 'AreaManagerRouteArgs{key: $key, placeId: $placeId}';
  }
}

/// generated route for
/// [_i5.CreateAccountPage]
class CreateAccountRoute extends _i39.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i39.PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i5.CreateAccountPage();
    },
  );
}

/// generated route for
/// [_i6.DeviceInfoPage]
class DeviceInfoRoute extends _i39.PageRouteInfo<DeviceInfoRouteArgs> {
  DeviceInfoRoute({
    _i40.Key? key,
    required int deviceId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          DeviceInfoRoute.name,
          args: DeviceInfoRouteArgs(
            key: key,
            deviceId: deviceId,
          ),
          initialChildren: children,
        );

  static const String name = 'DeviceInfoRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DeviceInfoRouteArgs>();
      return _i6.DeviceInfoPage(
        key: args.key,
        deviceId: args.deviceId,
      );
    },
  );
}

class DeviceInfoRouteArgs {
  const DeviceInfoRouteArgs({
    this.key,
    required this.deviceId,
  });

  final _i40.Key? key;

  final int deviceId;

  @override
  String toString() {
    return 'DeviceInfoRouteArgs{key: $key, deviceId: $deviceId}';
  }
}

/// generated route for
/// [_i7.DeviceSharePage]
class DeviceShareRoute extends _i39.PageRouteInfo<DeviceShareRouteArgs> {
  DeviceShareRoute({
    _i40.Key? key,
    required int placeId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          DeviceShareRoute.name,
          args: DeviceShareRouteArgs(
            key: key,
            placeId: placeId,
          ),
          initialChildren: children,
        );

  static const String name = 'DeviceShareRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DeviceShareRouteArgs>();
      return _i7.DeviceSharePage(
        key: args.key,
        placeId: args.placeId,
      );
    },
  );
}

class DeviceShareRouteArgs {
  const DeviceShareRouteArgs({
    this.key,
    required this.placeId,
  });

  final _i40.Key? key;

  final int placeId;

  @override
  String toString() {
    return 'DeviceShareRouteArgs{key: $key, placeId: $placeId}';
  }
}

/// generated route for
/// [_i8.EnableSettingModePage]
class EnableSettingModeRoute
    extends _i39.PageRouteInfo<EnableSettingModeRouteArgs> {
  EnableSettingModeRoute({
    _i40.Key? key,
    required _i42.DeviceBlueResponse deviceBlueResponse,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          EnableSettingModeRoute.name,
          args: EnableSettingModeRouteArgs(
            key: key,
            deviceBlueResponse: deviceBlueResponse,
          ),
          initialChildren: children,
        );

  static const String name = 'EnableSettingModeRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EnableSettingModeRouteArgs>();
      return _i8.EnableSettingModePage(
        key: args.key,
        deviceBlueResponse: args.deviceBlueResponse,
      );
    },
  );
}

class EnableSettingModeRouteArgs {
  const EnableSettingModeRouteArgs({
    this.key,
    required this.deviceBlueResponse,
  });

  final _i40.Key? key;

  final _i42.DeviceBlueResponse deviceBlueResponse;

  @override
  String toString() {
    return 'EnableSettingModeRouteArgs{key: $key, deviceBlueResponse: $deviceBlueResponse}';
  }
}

/// generated route for
/// [_i9.EngineerHomePage]
class EngineerHomeRoute extends _i39.PageRouteInfo<void> {
  const EngineerHomeRoute({List<_i39.PageRouteInfo>? children})
      : super(
          EngineerHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EngineerHomeRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i9.EngineerHomePage();
    },
  );
}

/// generated route for
/// [_i10.EngineerMainPage]
class EngineerMainRoute extends _i39.PageRouteInfo<void> {
  const EngineerMainRoute({List<_i39.PageRouteInfo>? children})
      : super(
          EngineerMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'EngineerMainRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i10.EngineerMainPage();
    },
  );
}

/// generated route for
/// [_i11.EngineerNotifyPage]
class EngineerNotifyRoute extends _i39.PageRouteInfo<void> {
  const EngineerNotifyRoute({List<_i39.PageRouteInfo>? children})
      : super(
          EngineerNotifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'EngineerNotifyRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i11.EngineerNotifyPage();
    },
  );
}

/// generated route for
/// [_i12.FindDevicePage]
class FindDeviceRoute extends _i39.PageRouteInfo<void> {
  const FindDeviceRoute({List<_i39.PageRouteInfo>? children})
      : super(
          FindDeviceRoute.name,
          initialChildren: children,
        );

  static const String name = 'FindDeviceRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i12.FindDevicePage();
    },
  );
}

/// generated route for
/// [_i13.ForgotPasswordPage]
class ForgotPasswordRoute extends _i39.PageRouteInfo<ForgotPasswordRouteArgs> {
  ForgotPasswordRoute({
    _i40.Key? key,
    required String email,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          ForgotPasswordRoute.name,
          args: ForgotPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ForgotPasswordRouteArgs>();
      return _i13.ForgotPasswordPage(
        key: args.key,
        email: args.email,
      );
    },
  );
}

class ForgotPasswordRouteArgs {
  const ForgotPasswordRouteArgs({
    this.key,
    required this.email,
  });

  final _i40.Key? key;

  final String email;

  @override
  String toString() {
    return 'ForgotPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i14.HomePage]
class HomeRoute extends _i39.PageRouteInfo<void> {
  const HomeRoute({List<_i39.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i14.HomePage();
    },
  );
}

/// generated route for
/// [_i15.LaunchScreenPage]
class LaunchScreenRoute extends _i39.PageRouteInfo<void> {
  const LaunchScreenRoute({List<_i39.PageRouteInfo>? children})
      : super(
          LaunchScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'LaunchScreenRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i15.LaunchScreenPage();
    },
  );
}

/// generated route for
/// [_i16.LoginPage]
class LoginRoute extends _i39.PageRouteInfo<void> {
  const LoginRoute({List<_i39.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i16.LoginPage();
    },
  );
}

/// generated route for
/// [_i17.MainPage]
class MainRoute extends _i39.PageRouteInfo<MainRouteArgs> {
  MainRoute({
    _i43.Key? key,
    bool isVerifyUserInfo = true,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          MainRoute.name,
          args: MainRouteArgs(
            key: key,
            isVerifyUserInfo: isVerifyUserInfo,
          ),
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MainRouteArgs>(orElse: () => const MainRouteArgs());
      return _i17.MainPage(
        key: args.key,
        isVerifyUserInfo: args.isVerifyUserInfo,
      );
    },
  );
}

class MainRouteArgs {
  const MainRouteArgs({
    this.key,
    this.isVerifyUserInfo = true,
  });

  final _i43.Key? key;

  final bool isVerifyUserInfo;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, isVerifyUserInfo: $isVerifyUserInfo}';
  }
}

/// generated route for
/// [_i18.MaintenanceOrderPage]
class MaintenanceOrderRoute
    extends _i39.PageRouteInfo<MaintenanceOrderRouteArgs> {
  MaintenanceOrderRoute({
    _i43.Key? key,
    required int mId,
    required _i44.GetTaskInformationResponse taskInformation,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          MaintenanceOrderRoute.name,
          args: MaintenanceOrderRouteArgs(
            key: key,
            mId: mId,
            taskInformation: taskInformation,
          ),
          initialChildren: children,
        );

  static const String name = 'MaintenanceOrderRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MaintenanceOrderRouteArgs>();
      return _i18.MaintenanceOrderPage(
        key: args.key,
        mId: args.mId,
        taskInformation: args.taskInformation,
      );
    },
  );
}

class MaintenanceOrderRouteArgs {
  const MaintenanceOrderRouteArgs({
    this.key,
    required this.mId,
    required this.taskInformation,
  });

  final _i43.Key? key;

  final int mId;

  final _i44.GetTaskInformationResponse taskInformation;

  @override
  String toString() {
    return 'MaintenanceOrderRouteArgs{key: $key, mId: $mId, taskInformation: $taskInformation}';
  }
}

/// generated route for
/// [_i19.NotifyPage]
class NotifyRoute extends _i39.PageRouteInfo<void> {
  const NotifyRoute({List<_i39.PageRouteInfo>? children})
      : super(
          NotifyRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotifyRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i19.NotifyPage();
    },
  );
}

/// generated route for
/// [_i20.OnboardingPage]
class OnboardingRoute extends _i39.PageRouteInfo<void> {
  const OnboardingRoute({List<_i39.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i20.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i21.PermissionSharePage]
class PermissionShareRoute
    extends _i39.PageRouteInfo<PermissionShareRouteArgs> {
  PermissionShareRoute({
    _i40.Key? key,
    required int placeId,
    required int userId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          PermissionShareRoute.name,
          args: PermissionShareRouteArgs(
            key: key,
            placeId: placeId,
            userId: userId,
          ),
          initialChildren: children,
        );

  static const String name = 'PermissionShareRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PermissionShareRouteArgs>();
      return _i21.PermissionSharePage(
        key: args.key,
        placeId: args.placeId,
        userId: args.userId,
      );
    },
  );
}

class PermissionShareRouteArgs {
  const PermissionShareRouteArgs({
    this.key,
    required this.placeId,
    required this.userId,
  });

  final _i40.Key? key;

  final int placeId;

  final int userId;

  @override
  String toString() {
    return 'PermissionShareRouteArgs{key: $key, placeId: $placeId, userId: $userId}';
  }
}

/// generated route for
/// [_i22.PersonalInformationPage]
class PersonalInformationRoute extends _i39.PageRouteInfo<void> {
  const PersonalInformationRoute({List<_i39.PageRouteInfo>? children})
      : super(
          PersonalInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalInformationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i22.PersonalInformationPage();
    },
  );
}

/// generated route for
/// [_i23.PlaceAndAreaPage]
class PlaceAndAreaRoute extends _i39.PageRouteInfo<PlaceAndAreaRouteArgs> {
  PlaceAndAreaRoute({
    _i40.Key? key,
    required int? placeId,
    required int? areaId,
    required String placeName,
    required String areaName,
    required int deviceId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          PlaceAndAreaRoute.name,
          args: PlaceAndAreaRouteArgs(
            key: key,
            placeId: placeId,
            areaId: areaId,
            placeName: placeName,
            areaName: areaName,
            deviceId: deviceId,
          ),
          initialChildren: children,
        );

  static const String name = 'PlaceAndAreaRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PlaceAndAreaRouteArgs>();
      return _i23.PlaceAndAreaPage(
        key: args.key,
        placeId: args.placeId,
        areaId: args.areaId,
        placeName: args.placeName,
        areaName: args.areaName,
        deviceId: args.deviceId,
      );
    },
  );
}

class PlaceAndAreaRouteArgs {
  const PlaceAndAreaRouteArgs({
    this.key,
    required this.placeId,
    required this.areaId,
    required this.placeName,
    required this.areaName,
    required this.deviceId,
  });

  final _i40.Key? key;

  final int? placeId;

  final int? areaId;

  final String placeName;

  final String areaName;

  final int deviceId;

  @override
  String toString() {
    return 'PlaceAndAreaRouteArgs{key: $key, placeId: $placeId, areaId: $areaId, placeName: $placeName, areaName: $areaName, deviceId: $deviceId}';
  }
}

/// generated route for
/// [_i24.PlaceManagerPage]
class PlaceManagerRoute extends _i39.PageRouteInfo<void> {
  const PlaceManagerRoute({List<_i39.PageRouteInfo>? children})
      : super(
          PlaceManagerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlaceManagerRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i24.PlaceManagerPage();
    },
  );
}

/// generated route for
/// [_i25.PlsTurnOnBluetoothPage]
class PlsTurnOnBluetoothRoute extends _i39.PageRouteInfo<void> {
  const PlsTurnOnBluetoothRoute({List<_i39.PageRouteInfo>? children})
      : super(
          PlsTurnOnBluetoothRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlsTurnOnBluetoothRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i25.PlsTurnOnBluetoothPage();
    },
  );
}

/// generated route for
/// [_i26.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i39.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i39.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i26.PrivacyPolicyPage();
    },
  );
}

/// generated route for
/// [_i27.RegisterPrivacyPolicyPage]
class RegisterPrivacyPolicyRoute extends _i39.PageRouteInfo<void> {
  const RegisterPrivacyPolicyRoute({List<_i39.PageRouteInfo>? children})
      : super(
          RegisterPrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterPrivacyPolicyRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i27.RegisterPrivacyPolicyPage();
    },
  );
}

/// generated route for
/// [_i28.RegisterSuccessPage]
class RegisterSuccessRoute
    extends _i39.PageRouteInfo<RegisterSuccessRouteArgs> {
  RegisterSuccessRoute({
    _i40.Key? key,
    required String account,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          RegisterSuccessRoute.name,
          args: RegisterSuccessRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterSuccessRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RegisterSuccessRouteArgs>();
      return _i28.RegisterSuccessPage(
        key: args.key,
        account: args.account,
      );
    },
  );
}

class RegisterSuccessRouteArgs {
  const RegisterSuccessRouteArgs({
    this.key,
    required this.account,
  });

  final _i40.Key? key;

  final String account;

  @override
  String toString() {
    return 'RegisterSuccessRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [_i29.RepairAndMaintenancePage]
class RepairAndMaintenanceRoute
    extends _i39.PageRouteInfo<RepairAndMaintenanceRouteArgs> {
  RepairAndMaintenanceRoute({
    _i40.Key? key,
    required _i41.DeviceInfoResponse? deviceInfo,
    bool isErrorCode = false,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          RepairAndMaintenanceRoute.name,
          args: RepairAndMaintenanceRouteArgs(
            key: key,
            deviceInfo: deviceInfo,
            isErrorCode: isErrorCode,
          ),
          initialChildren: children,
        );

  static const String name = 'RepairAndMaintenanceRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<RepairAndMaintenanceRouteArgs>();
      return _i29.RepairAndMaintenancePage(
        key: args.key,
        deviceInfo: args.deviceInfo,
        isErrorCode: args.isErrorCode,
      );
    },
  );
}

class RepairAndMaintenanceRouteArgs {
  const RepairAndMaintenanceRouteArgs({
    this.key,
    required this.deviceInfo,
    this.isErrorCode = false,
  });

  final _i40.Key? key;

  final _i41.DeviceInfoResponse? deviceInfo;

  final bool isErrorCode;

  @override
  String toString() {
    return 'RepairAndMaintenanceRouteArgs{key: $key, deviceInfo: $deviceInfo, isErrorCode: $isErrorCode}';
  }
}

/// generated route for
/// [_i30.ScanQrPage]
class ScanQrRoute extends _i39.PageRouteInfo<void> {
  const ScanQrRoute({List<_i39.PageRouteInfo>? children})
      : super(
          ScanQrRoute.name,
          initialChildren: children,
        );

  static const String name = 'ScanQrRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i30.ScanQrPage();
    },
  );
}

/// generated route for
/// [_i31.SearchDevicePage]
class SearchDeviceRoute extends _i39.PageRouteInfo<void> {
  const SearchDeviceRoute({List<_i39.PageRouteInfo>? children})
      : super(
          SearchDeviceRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchDeviceRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i31.SearchDevicePage();
    },
  );
}

/// generated route for
/// [_i32.SetPasswordPage]
class SetPasswordRoute extends _i39.PageRouteInfo<SetPasswordRouteArgs> {
  SetPasswordRoute({
    _i40.Key? key,
    required String account,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          SetPasswordRoute.name,
          args: SetPasswordRouteArgs(
            key: key,
            account: account,
          ),
          initialChildren: children,
        );

  static const String name = 'SetPasswordRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SetPasswordRouteArgs>();
      return _i32.SetPasswordPage(
        key: args.key,
        account: args.account,
      );
    },
  );
}

class SetPasswordRouteArgs {
  const SetPasswordRouteArgs({
    this.key,
    required this.account,
  });

  final _i40.Key? key;

  final String account;

  @override
  String toString() {
    return 'SetPasswordRouteArgs{key: $key, account: $account}';
  }
}

/// generated route for
/// [_i33.SettingPage]
class SettingRoute extends _i39.PageRouteInfo<void> {
  const SettingRoute({List<_i39.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i33.SettingPage();
    },
  );
}

/// generated route for
/// [_i34.TaskInformationPage]
class TaskInformationRoute
    extends _i39.PageRouteInfo<TaskInformationRouteArgs> {
  TaskInformationRoute({
    _i43.Key? key,
    required int mId,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          TaskInformationRoute.name,
          args: TaskInformationRouteArgs(
            key: key,
            mId: mId,
          ),
          initialChildren: children,
        );

  static const String name = 'TaskInformationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskInformationRouteArgs>();
      return _i34.TaskInformationPage(
        key: args.key,
        mId: args.mId,
      );
    },
  );
}

class TaskInformationRouteArgs {
  const TaskInformationRouteArgs({
    this.key,
    required this.mId,
  });

  final _i43.Key? key;

  final int mId;

  @override
  String toString() {
    return 'TaskInformationRouteArgs{key: $key, mId: $mId}';
  }
}

/// generated route for
/// [_i35.TaskRecordPage]
class TaskRecordRoute extends _i39.PageRouteInfo<void> {
  const TaskRecordRoute({List<_i39.PageRouteInfo>? children})
      : super(
          TaskRecordRoute.name,
          initialChildren: children,
        );

  static const String name = 'TaskRecordRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i35.TaskRecordPage();
    },
  );
}

/// generated route for
/// [_i36.UserInformationPage]
class UserInformationRoute extends _i39.PageRouteInfo<void> {
  const UserInformationRoute({List<_i39.PageRouteInfo>? children})
      : super(
          UserInformationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserInformationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      return const _i36.UserInformationPage();
    },
  );
}

/// generated route for
/// [_i37.VendorInfoPage]
class VendorInfoRoute extends _i39.PageRouteInfo<VendorInfoRouteArgs> {
  VendorInfoRoute({
    _i40.Key? key,
    required String? vendorName,
    required String? vendorPhone,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          VendorInfoRoute.name,
          args: VendorInfoRouteArgs(
            key: key,
            vendorName: vendorName,
            vendorPhone: vendorPhone,
          ),
          initialChildren: children,
        );

  static const String name = 'VendorInfoRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VendorInfoRouteArgs>();
      return _i37.VendorInfoPage(
        key: args.key,
        vendorName: args.vendorName,
        vendorPhone: args.vendorPhone,
      );
    },
  );
}

class VendorInfoRouteArgs {
  const VendorInfoRouteArgs({
    this.key,
    required this.vendorName,
    required this.vendorPhone,
  });

  final _i40.Key? key;

  final String? vendorName;

  final String? vendorPhone;

  @override
  String toString() {
    return 'VendorInfoRouteArgs{key: $key, vendorName: $vendorName, vendorPhone: $vendorPhone}';
  }
}

/// generated route for
/// [_i38.WarrantyInformationPage]
class WarrantyInformationRoute
    extends _i39.PageRouteInfo<WarrantyInformationRouteArgs> {
  WarrantyInformationRoute({
    _i40.Key? key,
    required _i41.DeviceInfoResponse deviceInfo,
    List<_i39.PageRouteInfo>? children,
  }) : super(
          WarrantyInformationRoute.name,
          args: WarrantyInformationRouteArgs(
            key: key,
            deviceInfo: deviceInfo,
          ),
          initialChildren: children,
        );

  static const String name = 'WarrantyInformationRoute';

  static _i39.PageInfo page = _i39.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WarrantyInformationRouteArgs>();
      return _i38.WarrantyInformationPage(
        key: args.key,
        deviceInfo: args.deviceInfo,
      );
    },
  );
}

class WarrantyInformationRouteArgs {
  const WarrantyInformationRouteArgs({
    this.key,
    required this.deviceInfo,
  });

  final _i40.Key? key;

  final _i41.DeviceInfoResponse deviceInfo;

  @override
  String toString() {
    return 'WarrantyInformationRouteArgs{key: $key, deviceInfo: $deviceInfo}';
  }
}
