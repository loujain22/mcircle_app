import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/device/device_utility.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer(
      {super.key,
      required this.text,
      this.icon = Icons.search,
      this.showBackground = true,
      this.showBorder = true,
      this.padding =
          const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace)});

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Padding(
      padding: padding,
      child: Container(
        width: EDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(ESizes.md),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? EColors.dark
                    : EColors.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(ESizes.cardRadiusLg),
            border: showBorder ? Border.all(color: EColors.grey) : null),
        child: Row(
          children: [
            Icon(icon, color: EColors.darkerGrey),
            const SizedBox(width: ESizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
