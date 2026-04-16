import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/product_card.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class SocialPage extends StatelessWidget {
  final Color themeColor;
  const SocialPage({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.s16),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0, index.isOdd ? 30.0 : 0.0),
            child: ProductCard(
              themeColor: themeColor,
            ),
          );
        },
      ),
    );
  }
}
