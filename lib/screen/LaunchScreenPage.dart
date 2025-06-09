import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/define.dart';
import 'package:haohsing_flutter/provider/VersionInfoProvider.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LaunchScreenPage extends HookConsumerWidget {
  const LaunchScreenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    useEffect(() {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        ref.read(versionInfoProvider.notifier).loadVersionInfo().then((_) {
          Timer(const Duration(seconds: 2), () async {
            if (await SharedPreferencesHelper.instance.isFirstLaunch()) {
              AutoRouter.of(context).replace(const OnboardingRoute());
            } else {
              AutoRouter.of(context).replace(const LoginRoute());
            }
          });
        });
      });
      return null;
    }, []);

    return BasePage(
      appBar: blackLightAppBar(),
      statusBarColor: AppColors.transparent,
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            child: assetImage('launch_bg.png', width: double.infinity, height: double.infinity, fit: BoxFit.fill),
          ),
          Align(
            alignment: Alignment.center,
            child: assetImage('img_log_white.png', width: screenWidth * 0.6, height: screenWidth * 0.6 * 0.26),
          ),
        ],
      ),
    );
  }
}
