import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';

class EDropdown extends StatelessWidget {
  final String label;
  final List<String> items;
  final void Function(String?) onChanged;
  final IconData? prefixIcon;

  const EDropdown({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DropdownButtonFormField<String>(
      isExpanded: true,
      icon: const Icon(Iconsax.arrow_down_1_copy, size: 18),
      decoration: InputDecoration(
        hintText: label,
        hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, size: 20) : null,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[300]!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
      ),
      dropdownColor: isDark ? const Color(0xFF1F1F1F) : Colors.white,
      iconEnabledColor: Colors.grey,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: isDark ? Colors.white : EColors.textSecondary,
            fontSize: 14,
          ),
      borderRadius: BorderRadius.circular(14),
      items:
          items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: onChanged,
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

// class EDropdown extends StatelessWidget {
//   final String label;
//   final List<String> items;
//   final void Function(String?) onChanged;
//   final IconData? prefixIcon;

//   const EDropdown(
//       {super.key,
//       required this.label,
//       required this.items,
//       required this.onChanged,
//       this.prefixIcon});

//   @override
//   Widget build(BuildContext context) {
//     final isDark = Theme.of(context).brightness == Brightness.dark;

//     return DropdownButtonFormField<String>(
//       isExpanded: true,
//       icon: const Icon(Iconsax.arrow_down_1_copy),
//       decoration: InputDecoration(
//         labelText: label,
//         prefixIcon: const Icon(Iconsax.global),
//       ),
//       dropdownColor: isDark ? const Color(0xFF1F1F1F) : Colors.white,
//       iconEnabledColor: Colors.grey,
//       style: Theme.of(context).textTheme.bodyLarge?.copyWith(
//             color: isDark ? Colors.white : Colors.black,
//           ),
//       borderRadius: BorderRadius.circular(14),
//       items:
//           items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
//       onChanged: onChanged,
//     );
//   }
// }
