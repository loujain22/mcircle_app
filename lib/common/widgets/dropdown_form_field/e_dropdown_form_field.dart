import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EDropdown extends StatelessWidget {
  final String label;
  final List<String> items;
  final void Function(String?) onChanged;

  const EDropdown({
    super.key,
    required this.label,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return DropdownButtonFormField<String>(
      isExpanded: true,
      icon: const Icon(Iconsax.arrow_down_1_copy),
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: const Icon(Iconsax.global),
      ),
      dropdownColor: isDark ? const Color(0xFF1F1F1F) : Colors.white,
      iconEnabledColor: Colors.grey,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: isDark ? Colors.white : Colors.black,
          ),
      borderRadius: BorderRadius.circular(14),
      items:
          items.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
      onChanged: onChanged,
    );
  }
}
