import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/features/shop/screens/categories/categories.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeSearch extends StatelessWidget {
  final Color themeColor;
  const HomeSearch({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ESizes.s16),
      child: Row(
        children: [
          // -- Categories Button
          InkWell(
            onTap: () => Get.to(() => const CategoriesScreen()),
            borderRadius: BorderRadius.circular(ESizes.s12),
            child: Container(
              padding: const EdgeInsets.all(ESizes.s12),
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: BorderRadius.circular(ESizes.s12),
              ),
              child: const Icon(
                Iconsax.category_2_copy,
                color: EColors.white,
                size: ESizes.s20,
              ),
            ),
          ),

          const SizedBox(width: ESizes.s8),

          // Search TextField
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search...",
                hintStyle: const TextStyle(
                    color: EColors.darkGrey,
                    fontSize: ESizes.fontSizeMd,
                    fontWeight: FontWeight.w500),
                prefixIcon: const Icon(
                  Iconsax.search_normal_copy,
                  color: Colors.grey,
                ),
                filled: true,
                fillColor: EColors.neutral100,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          const SizedBox(width: ESizes.s8),

          // Filter Button
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(ESizes.s12),
              decoration: BoxDecoration(
                color: themeColor,
                borderRadius: BorderRadius.circular(ESizes.s12),
              ),
              child: const Icon(Iconsax.setting_4_copy,
                  color: EColors.white, size: ESizes.s20),
            ),
          ),
        ],
      ),
    );
  }
}
