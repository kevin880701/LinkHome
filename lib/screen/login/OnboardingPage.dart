import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haohsing_flutter/model/OnboardingItem.dart';
import 'package:haohsing_flutter/resources/AppResources.dart';
import 'package:haohsing_flutter/route/AppRouter.gr.dart';
import 'package:haohsing_flutter/screen/base/BasePage.dart';
import 'package:haohsing_flutter/utils/SharedPreferencesHelper.dart';
import 'package:haohsing_flutter/widgets/common/AppBarWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ButtonWidgets.dart';
import 'package:haohsing_flutter/widgets/common/ImageWidgets.dart';
import 'package:haohsing_flutter/widgets/common/TextWidgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingPage extends HookConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    final currentPage = useState(0);
    final pageController = usePageController();

    return BasePage(
      appBar: bgDarkAppBar(),
      statusBarColor: AppColors.bgColor,
      child: SafeArea(
        bottom: false,
        child: Container(color: AppColors.white,child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.66,
              child: PageView(
                controller: pageController,
                onPageChanged: (int index) {
                  currentPage.value = index;
                },
                children: const [
                  OnboardingImage(
                    onboardingStep: OnboardingStep.onboarding1,
                  ),
                  OnboardingImage(
                    onboardingStep: OnboardingStep.onboarding2,
                  ),
                  OnboardingImage(
                    onboardingStep: OnboardingStep.onboarding3,
                  ),
                  OnboardingImage(
                    onboardingStep: OnboardingStep.onboarding4,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.sp),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: const WormEffect(
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  activeDotColor: AppColors.primaryBlack,
                  dotColor: AppColors.grey,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.sp),
              child: roundedButton(
                radius: 12.sp,
                text: currentPage.value < 3 ? AppTexts.next : '註冊/登入',
                onTap: () async {
                  if (currentPage.value < 3) {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    await SharedPreferencesHelper.instance.saveFirstLaunch(false).then((_){
                      AutoRouter.of(context).replace(const LoginRoute());
                    });
                  }
                },
                bgColor: AppColors.primaryYellow,
                fontColor: AppColors.white,
              ),
            ),
          ],
        ),),
      ),
    );
  }
}

class OnboardingImage extends StatelessWidget {
  final OnboardingStep onboardingStep;

  const OnboardingImage({super.key, required this.onboardingStep});

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        double totalHeight = constraints.maxHeight;
        double totalWidth = constraints.maxWidth;
        final screenWidth = MediaQuery.of(context).size.width;
        return Container(color: AppColors.bgColor,child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 24, 0, 8),
              child: customText(AppTexts.onboarding1Title, fontWeight: FontWeight.w700 ,fontSize: 24.sp,),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              height: totalHeight * 0.08,
              child: assetImage(getOnboardingItem(onboardingStep).text,),
            ),
            Expanded(child: Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.fromLTRB((onboardingStep == OnboardingStep.onboarding2)?totalWidth * 0.03:totalWidth * 0.04,0,(onboardingStep == OnboardingStep.onboarding2)?totalWidth * 0.03:0,0),
              child: assetImage(getOnboardingItem(onboardingStep).img,height: double.infinity),
            ),)
            ,
          ],
        ),);
      },
    );
  }
}
