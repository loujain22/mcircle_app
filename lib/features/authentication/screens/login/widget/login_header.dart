import 'package:mcircle_app/utils/constants/image_strings.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ELoginHeader extends StatelessWidget {
  const ELoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(height: 120, image: AssetImage(EImages.logo)),
        const SizedBox(height: ESizes.spaceBtwItems),
        Text("Welcome back", style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: ESizes.sm),
        Text("Discover Limitiess Choices and Unmatched Convenience.",
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
