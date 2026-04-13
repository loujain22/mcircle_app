import 'package:mcircle_app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.bgImage,
      required this.coloredTitle});

  final String image, title, coloredTitle, subTitle, bgImage;

  @override
  Widget build(BuildContext context) {
    double? eHperFunction = EHelperFunctions.screenHeight() * 0.127;
    return Stack(children: [
      Positioned.fill(
        child: Image(
          image: AssetImage(bgImage), // ضيفي مسار صورتك هنا
          fit: BoxFit.cover,
        ),
      ),

      /// Skip Button
      const OnBoardingSkip(),

      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ESizes.defaultSpace, vertical: eHperFunction),
          child: Column(
            children: [
              Image(
                  width: EHelperFunctions.screenWidth() * 0.6,
                  height: EHelperFunctions.screenHeight() * 0.4,
                  image: AssetImage(image)),
              const SizedBox(height: ESizes.spaceBtwItems + 16),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: title,
                        style: Theme.of(context).textTheme.headlineMedium),
                    TextSpan(
                        text: ' $coloredTitle',
                        style: const TextStyle(
                            color: EColors.primary,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600)),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
