import 'package:flutter/material.dart';
import 'package:mcircle_app/features/shop/screens/sub_category.dart/widgets/tabs/category_item_tabbar.dart';
import 'package:mcircle_app/utils/constants/colors.dart';

class CategoryTabBar extends StatelessWidget {
  final TabController controller;

  const CategoryTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    const activeColor = EColors.primary;
    const backgroundColor = EColors.primary25;
    const unselectedColor = EColors.adsTabUnselected;

    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TabBar(
        controller: controller,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: activeColor,
          borderRadius: BorderRadius.circular(50),
        ),
        labelColor: Colors.white,
        unselectedLabelColor: unselectedColor,
        dividerColor: Colors.transparent, // لإزالة الخط السفلي الافتراضي
        labelPadding: const EdgeInsets.symmetric(vertical: 2),
        tabs: const [
          CategoryTabItem(label: "All"),
          CategoryTabItem(label: "Cars"),
          CategoryTabItem(label: "Parts"),
        ],
      ),
    );
  }
}
