import 'package:mcircle_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mcircle_app/common/widgets/images/circular_image.dart';
import 'package:mcircle_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/enums.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(ESizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            // -- Icon
            Flexible(
              child: CircularImage(
                isNetworkImage: false,
                image: 'assets/icons/categories/shoes.png',
                backgroundColor: Colors.transparent,
                overlayColor: EHelperFunctions.isDarkMode(context)
                    ? EColors.white
                    : EColors.black,
              ),
            ),
            const SizedBox(width: ESizes.spaceBtwItems / 2),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                      title: 'Nike', brandTextSize: TextSizes.large),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
