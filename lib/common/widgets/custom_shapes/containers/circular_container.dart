import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ECircularContainer extends StatelessWidget {
  const ECircularContainer(
      {super.key,
      this.width = 400,
      this.height = 400,
      this.raduis = 400,
      this.padding = 0,
      this.child,
      this.backgroundColor = EColors.white,
      this.margin});

  final double? width, height;
  final double raduis, padding;
  final Widget? child;
  final Color backgroundColor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(raduis),
            color: backgroundColor),
        child: child,
      ),
    );
  }
}
