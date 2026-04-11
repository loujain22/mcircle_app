import 'package:mcircle_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/device/device_utility.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Positioned(
        right: ESizes.md,
        bottom: EDeviceUtils.getBottomNavigationBarHeight() + 25.0,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(), backgroundColor: EColors.primary),
            onPressed: () => OnBoardingController.instance.nextPage(),
            child: const Icon(Icons.arrow_forward)));
  }
}
