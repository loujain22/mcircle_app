import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class OTPField extends StatelessWidget {
  final int index;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Function(String) onChanged;

  const OTPField({
    super.key,
    required this.index,
    required this.controller,
    required this.focusNode,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        color: dark ? EColors.grey : EColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: controller.text.isNotEmpty ? EColors.primary : EColors.grey,
          width: 2,
        ),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          inputDecorationTheme: const InputDecorationTheme(
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
        child: Center(
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: const TextStyle(
                fontSize: ESizes.s24,
                fontWeight: FontWeight.w400,
                color: EColors.dark),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            decoration: const InputDecoration(
              counterText: "",
              hintText: "-",
              hintStyle: TextStyle(color: EColors.dark),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
