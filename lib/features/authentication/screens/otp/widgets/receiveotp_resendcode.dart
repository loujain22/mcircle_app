import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class ReciveOtpAndResendCode extends StatelessWidget {
  const ReciveOtpAndResendCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        const Text(
          "Didn’t receive OTP?",
          style: TextStyle(color: EColors.textSecondary),
        ),
        const SizedBox(
          height: ESizes.s4,
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero, // إلغاء الحواف الداخلية للزر
            minimumSize: const Size(0, 0), // إلغاء الحد الأدنى للحجم
            tapTargetSize:
                MaterialTapTargetSize.shrinkWrap, // تقليص مساحة اللمس الزائدة
          ),
          child: Text(
            "Resend code?",
            style: TextStyle(
              fontSize: ESizes.fontSizeSm,
              color: dark ? EColors.white : EColors.dark,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
