import 'package:mcircle_app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? EColors.dark : EColors.white,
      padding: const EdgeInsets.only(
          top: ESizes.sm, bottom: ESizes.sm, right: ESizes.sm, left: ESizes.md),
      child: Row(
        children: [
          Flexible(
              child: TextFormField(
            decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none),
          )),

          /// Button
          SizedBox(
            width: 80,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    foregroundColor: dark
                        ? EColors.white.withOpacity(0.5)
                        : EColors.dark.withOpacity(0.5),
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                onPressed: () {},
                child: const Text('Apply')),
          ),
        ],
      ),
    );
  }
}
