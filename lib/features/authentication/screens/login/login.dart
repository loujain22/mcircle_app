import 'package:mcircle_app/common/styles/spacing_style.dart';
import 'package:mcircle_app/common/widgets/login_signup/form_divider.dart';
import 'package:mcircle_app/common/widgets/login_signup/social_button.dart';
import 'package:mcircle_app/features/authentication/screens/login/widget/login_form.dart';
import 'package:mcircle_app/features/authentication/screens/login/widget/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: ESpacingStyle.paddingWithAppBarHeight,
      child: Column(
        children: [
          /// Logo, Title & Subtile
          ELoginHeader(),

          /// Form
          LoginForm(),
        ],
      ),
    )));
  }
}
