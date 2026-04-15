import 'package:flutter/material.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/product_card.dart';

class SocialPage extends StatelessWidget {
  final Color themeColor;
  const SocialPage({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductCard(
          themeColor: themeColor,
        ),
        ProductCard(
          themeColor: themeColor,
        )
      ],
    );
  }
}
