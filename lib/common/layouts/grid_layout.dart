import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  const GridLayout(
      {super.key,
      required this.itemCount,
      this.maxAxisExtent = 288,
      required this.itemBuilder});

  final int itemCount;
  final double? maxAxisExtent;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: ESizes.gridViewSpacing,
          crossAxisSpacing: ESizes.gridViewSpacing,
          mainAxisExtent: maxAxisExtent),
      itemBuilder: itemBuilder,
    );
  }
}
