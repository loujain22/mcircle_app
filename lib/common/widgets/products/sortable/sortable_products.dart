// import 'package:mcircle_app/common/layouts/grid_layout.dart';
// import 'package:mcircle_app/common/widgets/products/product_cards/product_card_vertical.dart';
// import 'package:mcircle_app/utils/constants/sizes.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

// class SortableProducts extends StatelessWidget {
//   const SortableProducts({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         /// Dropdown
//         DropdownButtonFormField(
//             decoration:
//                 const InputDecoration(prefixIcon: Icon(Iconsax.sort_copy)),
//             items: [
//               'Name',
//               'Higher Price',
//               'Lower Price',
//               'Sale',
//               'Newest',
//               'Popularity'
//             ]
//                 .map((option) =>
//                     DropdownMenuItem(value: option, child: Text(option)))
//                 .toList(),
//             onChanged: (value) {}),
//         const SizedBox(height: ESizes.spaceBtwSections),

//         /// Products
//         GridLayout(
//             itemCount: 8,
//             itemBuilder: (_, index) => const ProductCardVertical())
//       ],
//     );
//   }
// }
