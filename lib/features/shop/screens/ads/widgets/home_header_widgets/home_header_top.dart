import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class HomeHeaderTop extends StatelessWidget {
  const HomeHeaderTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // 1. صورة المستخدم دائرية
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/car.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        const Spacer(),

        const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Location",
              style: TextStyle(
                  fontSize: ESizes.fontSizeSm, color: EColors.textSecondary),
            ),
            SizedBox(height: 2),
            Row(
              children: [
                Icon(Icons.location_on,
                    size: ESizes.iconMd, color: Color(0xFFF0502C)),
                SizedBox(width: ESizes.s4),
                Text(
                  "Riyad, Saudi Arabia",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: ESizes.fontSizeMd,
                      color: EColors.dark),
                ),
                SizedBox(width: ESizes.s4),
                Icon(
                  Iconsax.arrow_down_1_copy,
                  size: ESizes.iconSM,
                  color: EColors.dark,
                ),
              ],
            ),
          ],
        ),

        const Spacer(), // لدفع الجرس لليمين تماماً

        // 3. أيقونة التنبيهات بخلفية رمادية
        Container(
          width: 48,
          height: 48,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFF5F5F5),
          ),
          child: const Icon(Iconsax.notification,
              color: EColors.black, size: ESizes.iconMd),
        ),
      ],
    );
  }
}
