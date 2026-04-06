import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
      this.width,
      this.height,
      this.raduis = ESizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = EColors.grey,
      this.backgroundColor = EColors.white,
      this.padding,
      this.margin});

  final double? width, height;
  final double raduis;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(raduis),
          border: showBorder ? Border.all(color: borderColor) : null),
      child: child,
    );
  }
}
