import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeHeaderTop extends StatelessWidget {
  final Color themeColor; //

  const HomeHeaderTop({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/car.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Spacer(),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Location",
              style: TextStyle(
                  fontSize: ESizes.fontSizeSm, color: EColors.textSecondary),
            ),
            const SizedBox(height: 2),
            Row(
              children: [
                Icon(Icons.location_on, size: ESizes.iconMd, color: themeColor),
                const SizedBox(width: ESizes.s4),
                const Text(
                  "Riyad, Saudi Arabia",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: ESizes.fontSizeMd,
                      color: EColors.dark),
                ),
                const SizedBox(width: ESizes.s4),
                const Icon(
                  Iconsax.arrow_down_1_copy,
                  size: ESizes.iconSM,
                  color: EColors.dark,
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F5F5),
          ),
          child:
              const Icon(Icons.add, color: EColors.black, size: ESizes.iconMd),
        ),
      ],
    );
  }
}
