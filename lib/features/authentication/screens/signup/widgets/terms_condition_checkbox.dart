import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckbox extends StatelessWidget {
  const TermsAndConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: ESizes.spaceBtwItems),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: "I agree to ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "Privacy Policy ",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? EColors.white : EColors.primary)),
          TextSpan(text: "and ", style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: "Terms of use ",
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: dark ? EColors.white : EColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? EColors.white : EColors.primary)),
        ]))
      ],
    );
  }
}
