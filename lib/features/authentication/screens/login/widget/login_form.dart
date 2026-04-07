import 'package:mcircle_app/common/styles/text_with_Primary_color.dart';
import 'package:mcircle_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:mcircle_app/features/shop/screens/home/home.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
//import 'package:mcircle_app/navigation_menu.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: ESizes.spaceBtwSections),
      child: Column(
        children: [
          /// Email
          TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.mobile),
                  labelText: "Enter your phone number",
                  labelStyle: TextStyle(
                    color: EColors.textPlaceholder,
                    fontSize: 16,
                  ))),

          const SizedBox(height: ESizes.spaceBtwItems),

          /// Remember Me & Forget Password
          Row(
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
                  Text("Remember me",
                      style: Theme.of(context).textTheme.bodyLarge),
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
          ),

          const SizedBox(height: ESizes.spaceBtwSections),

          // Sign In Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const HomeScreen()),
                  child: const Text("Sign In"))),

          const SizedBox(height: ESizes.xs),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 12),
              ),
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4), // يشيل المسافة الافتراضية
                  ),
                  child: const TextWithPrimaryColorWidget(
                    text: "Create Account",
                    fontSize: 12,
                    underline: true,
                  )),
            ],
          )
        ],
      ),
    ));
  }
}
