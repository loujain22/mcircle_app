import 'package:mcircle_app/common/widgets/images/rounded_image.dart';
import 'package:mcircle_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mcircle_app/common/widgets/texts/product_title_text.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ///  Image
        RoundedImage(
            imageUrl: "assets/images/products/sho1.png",
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(ESizes.sm),
            backgroundColor: EHelperFunctions.isDarkMode(context)
                ? EColors.darkerGrey
                : EColors.light),
        const SizedBox(width: ESizes.spaceBtwItems),

        /// Title, Price, $ Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(
                  child: ProductTitleText(
                      title: 'Black Sports shoes man with may sizes',
                      maxLines: 1)),

              /// Attributes
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'UK 08 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
