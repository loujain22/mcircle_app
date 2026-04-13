import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/features/shop/screens/ads/widgets/home_header_widgets/home_header_top.dart';
import 'package:mcircle_app/features/shop/screens/ads/widgets/home_header_widgets/home_search.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Header Top
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ESizes.s16, vertical: ESizes.s12),
          child: HomeHeaderTop(),
        ),

        SizedBox(height: ESizes.s16),

        // Home Search
        HomeSearch(),

        SizedBox(height: ESizes.s16),
      ],
    );
  }
}
