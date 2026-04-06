import 'package:mcircle_app/features/authentication/screens/password_configuration/resend_password.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// headings
            Text("Forget Password",
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: ESizes.spaceBtwItems),
            Text(
                "Don't worry sometimes people can forget too, enter your email and will send you a password reset link.",
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: ESizes.spaceBtwSections * 2),

            /// Text field
            const TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Iconsax.direct_right))),
            const SizedBox(height: ESizes.spaceBtwSections),

            /// Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => const ResendPassword()),
                    child: const Text("Submit")))
          ],
        ),
      ),
    );
  }
}
