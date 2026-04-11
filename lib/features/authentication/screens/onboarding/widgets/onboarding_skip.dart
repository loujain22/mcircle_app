import 'package:mcircle_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: EDeviceUtils.getAppBarHeight(),
        left: ESizes.md,
        child: TextButton(
            onPressed: () => OnBoardingController.instance.skipPage(),
            child: const Text(
              'Skip',
              style: TextStyle(color: EColors.textSecondary, fontSize: 14),
            )));
  }
}
