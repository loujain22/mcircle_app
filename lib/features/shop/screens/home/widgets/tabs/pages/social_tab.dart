import 'package:flutter/material.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/widgets/create_group_button.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/widgets/social_card.dart';
import 'package:mcircle_app/features/shop/screens/home/widgets/tabs/pages/widgets/social_search_form_field.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class SocialPage extends StatelessWidget {
  final Color themeColor;
  const SocialPage({super.key, required this.themeColor});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(ESizes.s16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: ESizes.s16),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(ESizes.s12),
            ),
            child: const SocialSearchFormField(),
          ),
          const SizedBox(height: ESizes.s16),
          CreateGroupButton(themeColor: themeColor),
          const SizedBox(height: ESizes.s24),
          SocialCard(themeColor: themeColor),
        ],
      ),
    );
  }
}
