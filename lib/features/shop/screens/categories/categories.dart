import 'package:flutter/material.dart';
import 'package:mcircle_app/common/widgets/appbar/circular_back_button.dart';
import 'package:mcircle_app/common/widgets/search_widget/search_widget.dart';
import 'package:mcircle_app/features/shop/screens/categories/widgets/category_grid.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color themeColor = EColors.primary;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 70,
        leading: const Center(
          child: CircularBackButton(),
        ),
        centerTitle: true,
        title: const Text('Categories',
            style:
                TextStyle(fontSize: ESizes.s20, fontWeight: FontWeight.w500)),
      ),
      body: const Padding(
        padding:
            EdgeInsets.symmetric(horizontal: ESizes.s16, vertical: ESizes.s16),
        child: Column(
          children: [
            SizedBox(height: ESizes.s12),
            // Search Bar with Filter
            SearchWidget(themeColor: themeColor),
            SizedBox(height: ESizes.s32),
            // Grid of Categories
            CategoryGrid(themeColor: themeColor),
          ],
        ),
      ),
    );
  }
}
