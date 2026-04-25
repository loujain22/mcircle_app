import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'pill_tab_item.dart';

class CustomPillTabBar extends StatelessWidget {
  final TabController controller;
  final Color activeColor;
  final Color backgroundColor;
  final Color unSelectedColor;

  const CustomPillTabBar(
      {super.key,
      required this.controller,
      required this.activeColor,
      required this.backgroundColor,
      required this.unSelectedColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: ESizes.s16, vertical: ESizes.s12),
      //  padding: const EdgeInsets.symmetric(vertical: ESizes.s4),
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: activeColor,
          borderRadius: BorderRadius.circular(50),
        ),
        controller: controller,
        indicatorColor: Colors.transparent,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.zero,
        tabs: [
          PillTabItem(
            icon: Iconsax.row_vertical,
            label: "Ads",
            isSelected: controller.index == 0,
            selectedColor: activeColor,
            unSelectedContent: unSelectedColor,
          ),
          PillTabItem(
            icon: Icons.gavel_rounded,
            label: "Auction",
            isSelected: controller.index == 1,
            selectedColor: activeColor,
            unSelectedContent: unSelectedColor,
          ),
          PillTabItem(
            icon: Iconsax.message,
            label: "Social",
            isSelected: controller.index == 2,
            selectedColor: activeColor,
            unSelectedContent: unSelectedColor,
          ),
        ],
      ),
    );
  }
}
