import 'package:flutter/material.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/home_header_widgets/home_header_top.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/home_header_widgets/home_search.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeHeader extends StatelessWidget {
  final Color themeColor; // 1. أضف المتغير هنا
  const HomeHeader({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header Top
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: ESizes.s16, vertical: ESizes.s12),
          child: HomeHeaderTop(themeColor: themeColor),
        ),

        const SizedBox(height: ESizes.s16),

        // Home Search
        HomeSearch(themeColor: themeColor),

        const SizedBox(height: ESizes.s16),
      ],
    );
  }
}
