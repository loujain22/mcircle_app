import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcircle_app/common/styles/text_with_primary_color.dart';
import 'package:mcircle_app/features/authentication/screens/password_configuration/forget_password.dart';

class RemembermeAndForgotPassword extends StatelessWidget {
  const RemembermeAndForgotPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Remember Me
        Row(
          children: [
            Transform.scale(
              scale: 1.3, // كبّري أو صغّري الرقم
              child: Checkbox(
                value: true,
                onChanged: (value) {},
              ),
            ),
            Text("Remember me", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),

        /// Forget Password
        TextButton(
            onPressed: () => Get.to(() => const ForgetPassword()),
            child: const TextWithPrimaryColorWidget(
              text: "Forget password?",
              fontSize: 14,
              underline: true,
            ))
      ],
    );
  }
}
