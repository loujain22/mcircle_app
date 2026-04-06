import 'package:mcircle_app/common/widgets/login_signup/form_divider.dart';
import 'package:mcircle_app/common/widgets/login_signup/social_button.dart';
import 'package:mcircle_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text("Let's create your account",
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Form
              const SignupForm(),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Divider
              EFormDivider(dividerText: "or Sign Up With".capitalize!),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Social Buttons
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}
