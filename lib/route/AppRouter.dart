import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/extensions/PageExtensions.dart';
import 'AppRouter.gr.dart';

void goLogin(BuildContext context, WidgetRef ref) {
  ref.hideLoading();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    AutoRouter.of(context).pushAndPopUntil(const LoginRoute(), predicate: (_) => false);
  });
}

void goUserMain(BuildContext context, WidgetRef ref, {bool isVerifyUserInfo = true}) {
  ref.hideLoading();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    AutoRouter.of(context).pushAndPopUntil(MainRoute(isVerifyUserInfo: isVerifyUserInfo), predicate: (_) => false);
  });
}

void goEngineerMain(BuildContext context, WidgetRef ref) {
  ref.hideLoading();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    AutoRouter.of(context).pushAndPopUntil(const EngineerMainRoute(), predicate: (_) => false);
  });
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  final int rinterval = 100;
  AppRouter({super.navigatorKey});

  @override
  List<AutoRoute> get routes => [
    // Engineer Screens
    CustomRoute(
      path: '/engineerHome',
      page: EngineerHomeRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/maintenanceOrder',
      page: MaintenanceOrderRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/taskInformation',
      page: TaskInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/engineerNotify',
      page: EngineerNotifyRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/taskRecord',
      page: TaskRecordRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/engineerMain',
      page: EngineerMainRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Login Screens
    CustomRoute(
      path: '/createAccount',
      page: CreateAccountRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/forgotPassword',
      page: ForgotPasswordRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/login',
      page: LoginRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/privacyPolicy',
      page: PrivacyPolicyRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/registerSuccess',
      page: RegisterSuccessRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/setPassword',
      page: SetPasswordRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/registerPrivacyPolicy',
      page: RegisterPrivacyPolicyRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/userInformation',
      page: UserInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // User Screens
    CustomRoute(
      path: '/deviceInfo',
      page: DeviceInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/advancedSettings',
      page: AdvancedSettingsRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/placeAndArea',
      page: PlaceAndAreaRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/warrantyInformation',
      page: WarrantyInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/repairAndMaintenance',
      page: RepairAndMaintenanceRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/vendorInfo',
      page: VendorInfoRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/home',
      page: HomeRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/areaManager',
      page: AreaManagerRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/deviceShare',
      page: DeviceShareRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/permissionShare',
      page: PermissionShareRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/placeManager',
      page: PlaceManagerRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Notify Screen
    CustomRoute(
      path: '/notify',
      page: NotifyRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Register Device Screens
    CustomRoute(
      path: '/addDevice',
      page: AddDeviceRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/addSuccess',
      page: AddSuccessRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/enableSettingMode',
      page: EnableSettingModeRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/findDevice',
      page: FindDeviceRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/scanQr',
      page: ScanQrRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/searchDevice',
      page: SearchDeviceRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/plsTurnOnBluetooth',
      page: PlsTurnOnBluetoothRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Setting Screens
    CustomRoute(
      path: '/personalInformation',
      page: PersonalInformationRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/setting',
      page: SettingRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
    CustomRoute(
      path: '/main',
      page: MainRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),

    // Misc Screens
    CustomRoute(
      path: '/launchScreen',
      page: LaunchScreenRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
      initial: true,
    ),
    CustomRoute(
      path: '/onboarding',
      page: OnboardingRoute.page,
      transitionsBuilder: TransitionsBuilders.slideLeft,
      durationInMilliseconds: rinterval,
      reverseDurationInMilliseconds: rinterval,
    ),
  ];
}
