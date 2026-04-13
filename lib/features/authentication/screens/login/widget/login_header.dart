import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/image_strings.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double? eHperFunction = EHelperFunctions.screenHeight() * 0.127;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: eHperFunction),
        Column(
          children: [
            const Image(height: 100, image: AssetImage(EImages.clogo)),
            const SizedBox(height: ESizes.defaultSpace),
            Text("Welcome back",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ESizes.sm),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "Log in to continue shopping, save your\n",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: EColors.textSecondary)),
                  TextSpan(
                      text: "favorites, and track your orders",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: EColors.textSecondary)),
                ],
              ),
              textAlign: TextAlign.center,
            )
          ],
        )
      ],
    );
  }
}
