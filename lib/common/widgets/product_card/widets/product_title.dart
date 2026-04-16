import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Product Card Title",
      style: TextStyle(
        color: Colors.white,
        fontSize: ESizes.fontSizeSm,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
