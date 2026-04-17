import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcircle_app/features/shop/data/categoty.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/sub_category.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 0,
          crossAxisSpacing: 10,
          childAspectRatio: 0.65,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Get.to(() => const SubCategoryScreen()),
            child: Column(
              children: [
                Container(
                  width: 75,
                  height: 75,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: dark
                        ? themeColor.withOpacity(0.3)
                        : themeColor.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    categories[index].image,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: ESizes.s8),
                // Category name
                Text(
                  categories[index].title,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: ESizes.s12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
