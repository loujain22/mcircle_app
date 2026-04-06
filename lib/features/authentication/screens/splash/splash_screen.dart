import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:mcircle_app/features/shop/screens/home/home.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return AnimatedSplashScreen(
      splash: SizedBox.expand(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/bg.png",
              fit: BoxFit.cover,
            ),

            // overlay اختياري
            Container(
              color: Colors.black.withOpacity(0.2),
            ),

            Center(
              child: Image.asset(
                "assets/logos/logo.png",
                width: 200,
                height: 200,
              ),
            ),
          ],
        ),
      ),
      nextScreen: const HomeScreen(),
      duration: 3500,
      // backgroundColor: dark ? EColors.black : EColors.white,
      splashIconSize: double.infinity,
    );
  }
}
