import 'package:mcircle_app/common/styles/text_with_Primary_color.dart';
import 'package:mcircle_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:mcircle_app/features/authentication/screens/signup/signup.dart';
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
                prefixIcon: Icon(Iconsax.direct_right), labelText: "Email"),
          ),
          const SizedBox(height: ESizes.sapceBtwInputFields),

          /// Password
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: "Password",
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(height: ESizes.sapceBtwInputFields / 2),

          /// Remember Me & Forget Password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember Me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text("Remember Me")
                ],
              ),

              /// Forget Password
              TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child:
                      const TextWithPrimaryColorWidget(text: "Forget password"))
            ],
          ),

          const SizedBox(
            height: ESizes.spaceBtwSections,
          ),

          /// Sign In Button
          // SizedBox(
          //     width: double.infinity,
          //     child: ElevatedButton(
          //         onPressed: () => Get.to(() => const NavigationMenu()),
          //         child: const Text("SignIn"))),
          // const SizedBox(height: ESizes.spaceBtwItems),

          /// Create Account button
          SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () => Get.to(() => const SignupScreen()),
                  child: const Text("Create Account")))
        ],
      ),
    ));
  }
}
