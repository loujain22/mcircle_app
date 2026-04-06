// import 'package:mcircle_app/common/styles/shadows.dart';
// import 'package:mcircle_app/common/widgets/custom_shapes/containers/rounded_container.dart';
// import 'package:mcircle_app/common/widgets/icons/circular_icon.dart';
// import 'package:mcircle_app/common/widgets/images/rounded_image.dart';
// import 'package:mcircle_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
// import 'package:mcircle_app/common/widgets/texts/product_price_text.dart';
// import 'package:mcircle_app/common/widgets/texts/product_title_text.dart';
// import 'package:mcircle_app/features/shop/screens/product_details/product_details.dart';
// import 'package:mcircle_app/utils/constants/colors.dart';
// import 'package:mcircle_app/utils/constants/enums.dart';
// import 'package:mcircle_app/utils/constants/sizes.dart';
// import 'package:mcircle_app/utils/helpers/helper_functions.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:iconsax_flutter/iconsax_flutter.dart';

// class ProductCardVertical extends StatelessWidget {
//   const ProductCardVertical({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final dark = EHelperFunctions.isDarkMode(context);

//     /// Container with side paddings, color , edges, raduis and shadow.
//     return GestureDetector(
//       onTap: () => Get.to(const ProductDetailsScreen()),
//       child: Container(
//         width: 180,
//         padding: const EdgeInsets.all(1),
//         decoration: BoxDecoration(
//             boxShadow: [EShadowStyle.verticalProductShadow],
//             borderRadius: BorderRadius.circular(ESizes.productImageRadius),
//             color: dark ? EColors.darkerGrey : EColors.white),
//         child: Column(
//           children: [
//             // Thumbnail, Wishlist button , Discount tag
//             RoundedContainer(
//               height: 180,
//               padding: const EdgeInsets.all(ESizes.sm),
//               backgroundColor: dark ? EColors.dark : EColors.light,
//               child: Stack(
//                 children: [
//                   // Thumbnail Image
//                   const RoundedImage(
//                       imageUrl: "assets/images/products/sho1.png",
//                       applyImageRadius: true),

//                   // Sale Tage
//                   Positioned(
//                     top: 12,
//                     child: RoundedContainer(
//                       raduis: ESizes.sm,
//                       backgroundColor: Colors.yellow.withOpacity(0.8),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: ESizes.sm, vertical: ESizes.xs),
//                       child: Text('25%',
//                           style: Theme.of(context)
//                               .textTheme
//                               .labelLarge!
//                               .apply(color: EColors.black)),
//                     ),
//                   ),

//                   // Favourit Icon Button
//                   const Positioned(
//                     top: 0,
//                     right: 0,
//                     child: CircularIcon(
//                       icon: Iconsax.heart,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: ESizes.spaceBtwItems / 2),

//             // Details
//             const Padding(
//               padding: EdgeInsets.only(left: ESizes.sm),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ProductTitleText(title: "Simon Woman Shoes", smallSize: true),
//                   SizedBox(height: ESizes.spaceBtwItems / 2),
//                   BrandTitleTextWithVerifiedIcon(
//                     title: "Nike",
//                     brandTextSize: TextSizes.large,
//                   )
//                 ],
//               ),
//             ),

//             const Spacer(),

//             // -- Price Row
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Pricebra
//                 const Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: ProductPriceText(price: "40", isLarge: false),
//                 ),

//                 //-- Add to card button
//                 Container(
//                   decoration: const BoxDecoration(
//                       color: EColors.dark,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(ESizes.cardRadiusMd),
//                         bottomRight: Radius.circular(ESizes.productImageRadius),
//                       )),
//                   child: const SizedBox(
//                     width: ESizes.iconLg * 1.2,
//                     height: ESizes.iconLg * 1.2,
//                     child: Center(
//                       child: Icon(
//                         Icons.add,
//                         color: EColors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
