import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class TextWithPrimaryColorWidget extends StatelessWidget {
  const TextWithPrimaryColorWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: EColors.primary),
    );
  }
}
