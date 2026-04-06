import 'package:mcircle_app/features/authentication/screens/signup/widgets/terms_condition_checkbox.dart';
import 'package:mcircle_app/features/shop/screens/home/home.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "First Name", prefixIcon: Icon(Iconsax.user))),
            ),
            const SizedBox(width: ESizes.sapceBtwInputFields),
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: "Last Name", prefixIcon: Icon(Iconsax.user))),
            )
          ],
        ),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        /// Username
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Username", prefixIcon: Icon(Iconsax.user_edit))),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        /// Email
        TextFormField(
            decoration: const InputDecoration(
                labelText: "E-Mail", prefixIcon: Icon(Iconsax.direct))),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        /// Phane Number
        TextFormField(
            decoration: const InputDecoration(
                labelText: "Phone Number", prefixIcon: Icon(Iconsax.call))),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        /// password
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash))),
        const SizedBox(height: ESizes.spaceBtwSections),

        /// Terms & Conditions Checkbox
        const TermsAndConditionCheckbox(),
        const SizedBox(height: ESizes.spaceBtwSections),

        /// Sign Up Button
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(const HomeScreen()),
                child: const Text("Create Account"))),
      ],
    ));
  }
}
