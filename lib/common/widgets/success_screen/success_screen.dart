import 'package:mcircle_app/common/styles/spacing_style.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed,
      this.width,
      this.height});

  final String image, title, subTitle;
  final VoidCallback onPressed;
  final double? width, height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ESpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Images
              Image(
                height: height,
                width: width,
                image: AssetImage(
                  image,
                ),
                //  width: EHelperFunctions.screenWidth() * 0.6
              ),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Title & SubTitle
              Text(title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwItems),
              Text(subTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: ESizes.spaceBtwSections),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed, child: const Text("Continue"))),
            ],
          ),
        ),
      ),
    );
  }
}
