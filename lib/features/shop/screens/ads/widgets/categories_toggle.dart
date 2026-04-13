import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CategoriesToggle extends StatefulWidget {
  const CategoriesToggle({super.key});

  @override
  State<CategoriesToggle> createState() => _CategoriesToggleState();
}

class _CategoriesToggleState extends State<CategoriesToggle> {
  // لتحديد الزر النشط حالياً
  String selectedCategory = 'Ads';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          _buildCategoryButton(title: 'Ads', icon: Iconsax.save_2),
          const SizedBox(width: 10),
          _buildCategoryButton(title: 'Auction', icon: Iconsax.judge),
          const SizedBox(width: 10),
          _buildCategoryButton(title: 'Social', icon: Iconsax.messages_1),
        ],
      ),
    );
  }

  Widget _buildCategoryButton({required String title, required IconData icon}) {
    bool isSelected = selectedCategory == title;
    return GestureDetector(
      onTap: () => setState(() => selectedCategory = title),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          // اللون البرتقالي المعتمد لديكِ #F0502C
          color: isSelected ? const Color(0xFFF0502C) : const Color(0xFFFDF2F0),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 18,
              color: isSelected ? Colors.white : const Color(0xFFF0502C),
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(
                color: isSelected ? Colors.white : const Color(0xFFF0502C),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
