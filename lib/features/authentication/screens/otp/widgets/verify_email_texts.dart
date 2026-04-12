import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class VerifyEmailTexts extends StatelessWidget {
  const VerifyEmailTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Verify Code",
          style: TextStyle(
              fontSize: ESizes.fontSizeXLg, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: ESizes.s8),
        RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            style: TextStyle(
                color: EColors.textSecondary, fontSize: ESizes.fontSizeMd),
            children: [
              TextSpan(text: "Please enter the code we just sent to email\n"),
              TextSpan(
                text: "example@gmail.com",
                style: TextStyle(
                    color: EColors.primary, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
