import 'package:mcircle_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mcircle_app/common/widgets/products/product_cards/brand_card.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(ESizes.md),
      showBorder: true,
      borderColor: EColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: ESizes.spaceBtwItems),
      child: Column(
        children: [
          /// Brand with Products Count
          const BrandCard(showBorder: true),
          const SizedBox(height: ESizes.spaceBtwItems),

          /// Brand Top 3  Product Image
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList())
        ],
      ),
    );
  }

  Expanded brandTopProductImageWidget(String image, context) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: EHelperFunctions.isDarkMode(context)
            ? EColors.darkerGrey
            : EColors.light,
        margin: const EdgeInsets.only(right: ESizes.sm),
        padding: const EdgeInsets.all(ESizes.md),
        child: Image(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
