import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TextWithPrimaryColorWidget extends StatelessWidget {
  const TextWithPrimaryColorWidget(
      {super.key, required this.text, this.fontSize, required this.underline});
  final String text;
  final double? fontSize;
  final bool underline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: EColors.primary,
        fontSize: fontSize,
        decoration: underline ? TextDecoration.underline : TextDecoration.none,
        decorationColor: underline ? EColors.primary : null,
        decorationThickness: underline ? 1.5 : null,
      ),
    );
  }
}
