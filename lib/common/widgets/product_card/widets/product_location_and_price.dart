import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/colors.dart';

class ProductLocationAndPrice extends StatelessWidget {
  const ProductLocationAndPrice({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // -- Location
        Row(
          children: [
            Icon(Icons.location_on, color: themeColor, size: 14),
            const SizedBox(width: 4),
            const Text(
              "ar-Riyad",
              style: TextStyle(
                color: EColors.white,
                fontSize: 11,
              ),
            ),
          ],
        ),

        // -- Product price
        Row(
          children: [
            Text(
              "ر.س",
              style: TextStyle(
                color: themeColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 2),
            const Text(
              "30.000",
              style: TextStyle(
                color: EColors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
