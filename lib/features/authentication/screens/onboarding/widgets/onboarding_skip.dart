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
        right: ESizes.defaultSpace,
        child: TextButton(onPressed: () {}, child: const Text('Skip')));
  }
}
