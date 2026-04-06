import 'package:mcircle_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mcircle_app/common/widgets/icons/circular_icon.dart';
import 'package:mcircle_app/common/widgets/images/rounded_image.dart';
import 'package:mcircle_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mcircle_app/common/widgets/texts/product_price_text.dart';
import 'package:mcircle_app/common/widgets/texts/product_title_text.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: 318,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ESizes.productImageRadius),
          color: dark ? EColors.darkGrey : EColors.lightContainer),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Thumbnail
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
            child: Stack(
              children: [
                /// -- Thumbnaul Image
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: RoundedImage(
                        imageUrl: "assets/images/products/sho.png",
                        applyImageRadius: true)),

                /// -- Sale Tag
                Positioned(
                    top: 12,
                    child: RoundedContainer(
                      raduis: ESizes.sm,
                      backgroundColor: Colors.yellow.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: ESizes.sm, vertical: ESizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: EColors.black),
                      ),
                    )),

                /// -- Favourite Icon Button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(icon: Iconsax.heart, color: Colors.red))
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: ESizes.sm),
                      child: ProductTitleText(
                          title: 'Green Nike Hale Sleeves Shirt',
                          smallSize: true),
                    ),
                    SizedBox(height: ESizes.spaceBtwItems / 2),
                    BrandTitleTextWithVerifiedIcon(title: 'Nike')
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Pricing
                    const Flexible(child: ProductPriceText(price: '256.0')),

                    /// Add To Cart
                    Container(
                      decoration: const BoxDecoration(
                          color: EColors.dark,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(ESizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(ESizes.productImageRadius))),
                      child: const SizedBox(
                        width: ESizes.iconLg * 1.2,
                        height: ESizes.iconLg * 1.2,
                        child: Center(
                          child: Icon(Icons.add, color: EColors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
