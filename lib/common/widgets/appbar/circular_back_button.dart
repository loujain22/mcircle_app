import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class CircularBackButton extends StatelessWidget {
  const CircularBackButton({
    super.key,
    this.onPressed,
    this.borderColor = EColors.lightBorderGrey,
    this.size = 40.0,
  });

  final VoidCallback? onPressed;
  final Color borderColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(
          Icons.arrow_back,
          color: dark ? EColors.white : EColors.black,
          size: size * 0.5, // حجم الأيقونة يتناسب مع حجم الدائرة
        ),
        onPressed: onPressed ?? () => Navigator.pop(context),
      ),
    );
  }
}
