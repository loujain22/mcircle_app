import 'package:mcircle_app/common/styles/text_with_Primary_color.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResendPassword extends StatelessWidget {
  const ResendPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false, actions: [
        IconButton(onPressed: () => Get.back(), icon: const Icon(Icons.close))
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ESizes.defaultSpace),
          child: Column(
            children: [
              /// Images
              Image(
                  image: const AssetImage("assets/images/resetPassword.png"),
                  width: EHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Title & SubTitle
              Text("Password Reset Email Send",
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(
                  "Your Account Security is Our Priority We've sent you a secure Link to Safely Change Your Password and Keep Your Account Protected.",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Done"))),
              const SizedBox(height: ESizes.spaceBtwItems),

              SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: const TextWithPrimaryColorWidget(
                        text: "Resend Email",
                        fontSize: 14,
                        underline: false,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
