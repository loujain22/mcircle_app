import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/colors.dart';

class CreateGroupButton extends StatelessWidget {
  const CreateGroupButton({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: themeColor,
          foregroundColor: EColors.white,
          elevation: 0,
          side: BorderSide(
            color: themeColor,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: const Text(
          "Create Group",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
    );
  }
}
