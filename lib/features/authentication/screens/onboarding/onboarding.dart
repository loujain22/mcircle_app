import 'package:mcircle_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mcircle_app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:mcircle_app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:mcircle_app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:mcircle_app/utils/constants/image_strings.dart';
import 'package:mcircle_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            /*  */
            children: [
              OnBoardingPage(
                  image: EImages.onBoardingImage1,
                  title: ETexts.onBoardingTitle1,
                  coloredTitle: ETexts.onBoardingColoredTitle1,
                  subTitle: ETexts.onBoardingSubTitle1,
                  bgImage: dark
                      ? EImages.onBoardingDarkBgImage1
                      : EImages.onBoardingBgImage1),
              OnBoardingPage(
                  image: EImages.onBoardingImage2,
                  title: ETexts.onBoardingTitle2,
                  coloredTitle: ETexts.onBoardingColoredTitle2,
                  subTitle: ETexts.onBoardingSubTitle2,
                  bgImage: dark
                      ? EImages.onBoardingDarkBgImage2
                      : EImages.onBoardingBgImage2),
              OnBoardingPage(
                  image: EImages.onBoardingImage3,
                  title: ETexts.onBoardingTitle3,
                  coloredTitle: ETexts.onBoardingColoredTitle3,
                  subTitle: ETexts.onBoardingSubTitle3,
                  bgImage: dark
                      ? EImages.onBoardingDarkBgImage3
                      : EImages.onBoardingBgImage3)
            ],
          ),

          /// Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
