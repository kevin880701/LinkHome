class OnboardingItem {
  final String img;
  final String text;

  OnboardingItem({required this.img, required this.text});
}

enum OnboardingStep {
  onboarding1,
  onboarding2,
  onboarding3,
  onboarding4,
}

OnboardingItem getOnboardingItem(OnboardingStep step) {
  switch (step) {
    case OnboardingStep.onboarding1:
      return OnboardingItem(
        img: 'img_onboarding1.png',
        text: 'img_onboarding1_text.png',
      );
    case OnboardingStep.onboarding2:
      return OnboardingItem(
        img: 'img_onboarding2.png',
        text: 'img_onboarding2_text.png',
      );
    case OnboardingStep.onboarding3:
      return OnboardingItem(
        img: 'img_onboarding3.png',
        text: 'img_onboarding3_text.png',
      );
    case OnboardingStep.onboarding4:
      return OnboardingItem(
        img: 'img_onboarding4.png',
        text: 'img_onboarding4_text.png',
      );
  }
}