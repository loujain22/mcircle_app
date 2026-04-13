import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mcircle_app/features/shop/screens/ads/widgets/home_header.dart';
import 'package:mcircle_app/features/shop/screens/ads/widgets/categories_toggle.dart';
import 'package:mcircle_app/features/shop/screens/ads/widgets/product_card.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const HomeHeader(),
            const SizedBox(height: 20),
            // أزرار التصنيف (Ads, Auction, Social)
            const CategoriesToggle(),
            const SizedBox(height: 10),
            // الشبكة (The Grid)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  itemCount: 6, // عدد الكروت
                  itemBuilder: (context, index) {
                    return ProductCard(
                      imageUrl: 'assets/car${index + 1}.jpg', // صور تجريبية
                      title: "Product Card Title",
                      price: "30000",
                      height: index.isEven ? 250 : 180, // كارت طويل وكارت قصير
                      isFavorite: index % 2 == 0,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
