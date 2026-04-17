import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class SocialSearchFormField extends StatelessWidget {
  const SocialSearchFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Search...",
        hintStyle: const TextStyle(
            color: EColors.darkGrey,
            fontSize: ESizes.fontSizeMd,
            fontWeight: FontWeight.w500),
        prefixIcon: const Icon(
          Iconsax.search_normal_copy,
          color: Colors.grey,
        ),
        filled: true,
        fillColor: EColors.neutral100,
        contentPadding: const EdgeInsets.symmetric(vertical: 0),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
