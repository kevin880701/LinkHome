import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/widgets/MainTitleBar.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PrivacyPolicyPage extends HookConsumerWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final controller = WebViewController()
      ..setBackgroundColor(const Color(0x00000000))
      ..loadFlutterAsset('assets/other/privacy.html');
    return BasePage(
      child: SafeArea(
        bottom: false,
        child: Container(
          child: Column(
            children: [
              MainTitleBar(
                title: AppTexts.privacyPolicy,
                isBack: true,
              ),
          Expanded(
            child: WebViewWidget(controller: controller),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
