import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class CategoryTabItem extends StatelessWidget {
  final String label;

  const CategoryTabItem({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: ESizes.s16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
