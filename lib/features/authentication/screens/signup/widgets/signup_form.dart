import 'package:mcircle_app/common/styles/text_with_primary_color.dart';
import 'package:mcircle_app/common/widgets/dropdown_form_field/e_dropdown_form_field.dart';
import 'package:mcircle_app/features/authentication/screens/login/login.dart';
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

        /// Phane Number
        TextFormField(
            decoration: const InputDecoration(
                labelText: "Phone Number", prefixIcon: Icon(Iconsax.call))),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        /// Email
        TextFormField(
            decoration: const InputDecoration(
                labelText: "E-Mail", prefixIcon: Icon(Iconsax.direct))),
        const SizedBox(height: ESizes.sapceBtwInputFields),

        // Row(
        //   children: [
        //     Expanded(
        //       child: TextFormField(
        //           expands: false,
        //           decoration: const InputDecoration(
        //               labelText: "Country",
        //               prefixIcon: Icon(Iconsax.global),
        //               suffixIcon: Icon(Iconsax.arrow_down_1_copy))),
        //     ),
        //     const SizedBox(width: ESizes.sapceBtwInputFields),
        //     Expanded(
        //       child: TextFormField(
        //           expands: false,
        //           decoration: const InputDecoration(
        //               labelText: "City",
        //               prefixIcon: Icon(Iconsax.global),
        //               suffixIcon: Icon(Iconsax.arrow_down_1_copy))),
        //     )
        //   ],
        // ),
        // const SizedBox(height: ESizes.sapceBtwInputFields),
        Row(
          children: [
            // --- Country ---
            Expanded(
              child: EDropdown(
                label: "Country",
                items: const ["Egypt", "Saudi Arabia", "Sudan"],
                onChanged: (value) {},
              ),
            ),

            const SizedBox(width: ESizes.sapceBtwInputFields),

            // --- City ---
            Expanded(
              child: EDropdown(
                label: "City",
                items: const ["Cairo", "Alexandria", "Riyadh", "Khartoum"],
                onChanged: (value) {},
              ),
            ),
          ],
        ),
        const SizedBox(height: ESizes.md),

        /// Terms & Conditions Checkbox
        const TermsAndConditionCheckbox(),
        const SizedBox(height: ESizes.spaceBtwSections),

        /// Sign Up Button
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(const HomeScreen()),
                child: const Text("Create Account"))),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already have an account?",
              style: TextStyle(fontSize: 12),
            ),
            TextButton(
                onPressed: () => Get.to(() => const LoginScreen()),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size.zero,
                ),
                child: const TextWithPrimaryColorWidget(
                  text: "Login",
                  fontSize: 12,
                  underline: true,
                )),
          ],
        )
      ],
    ));
  }
}
