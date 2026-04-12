import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mcircle_app/common/widgets/appbar/circular_back_button.dart';
import 'package:mcircle_app/features/authentication/screens/otp/widgets/otp_field.dart';
import 'package:mcircle_app/features/authentication/screens/otp/widgets/receiveotp_resendcode.dart';
import 'package:mcircle_app/features/authentication/screens/otp/widgets/verify_email_texts.dart';
import 'package:mcircle_app/features/shop/screens/home/home.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // أو أي لون تفضلينه
        elevation: 0,
        leadingWidth: 70,
        leading: const Center(
          child: CircularBackButton(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: ESizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: ESizes.s40),
            const VerifyEmailTexts(),
            const SizedBox(height: ESizes.s40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return OTPField(
                  index: index,
                  controller: _controllers[index],
                  focusNode: _focusNodes[index],
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      if (index < 3) {
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index + 1]);
                      } else {
                        _focusNodes[index].unfocus();
                      }
                    } else {
                      if (index > 0) {
                        FocusScope.of(context)
                            .requestFocus(_focusNodes[index - 1]);
                      }
                    }
                    setState(() {}); // لتحديث لون الحواف
                  },
                );
              }),
            ),
            const SizedBox(height: ESizes.s24),
            const ReciveOtpAndResendCode(),
            const SizedBox(height: ESizes.s40),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const HomeScreen()),
                    child: const Text("Verify"))),
          ],
        ),
      ),
    );
  }
}
