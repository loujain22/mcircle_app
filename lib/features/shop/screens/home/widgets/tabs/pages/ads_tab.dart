import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mcircle_app/common/widgets/product_card/product_card.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class AdsPage extends StatelessWidget {
  final Color themeColor;
  const AdsPage({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    final List<String> productImages = [
      'assets/products_card/car1.jpg',
      'assets/products_card/car2.jpg',
      'assets/products_card/car3.jpg',
      'assets/products_card/car4.jpg',
      'assets/products_card/car1.jpg',
      'assets/products_card/car2.jpg',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.s16),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        itemCount: productImages.length,
        itemBuilder: (context, index) {
          return Transform.translate(
            offset: Offset(0, index.isOdd ? 30.0 : 0.0),
            child: ProductCard(
              themeColor: themeColor,
              imagePath: productImages[index],
            ),
          );
        },
      ),
    );
  }
}
