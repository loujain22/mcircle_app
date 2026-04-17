import 'package:flutter/material.dart';
import 'package:mcircle_app/features/authentication/screens/signup/widgets/image_picker.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';
import 'package:mcircle_app/utils/helpers/helper_functions.dart';

class CreateGroupButton extends StatelessWidget {
  const CreateGroupButton({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        onPressed: () {
          showCreateGroupPopup(context, themeColor);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: themeColor,
          foregroundColor: EColors.white,
          elevation: 0,
          side: BorderSide(
            color: themeColor,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: ESizes.s24, vertical: ESizes.s12),
        ),
        child: const Text(
          "Create Group",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: ESizes.fontSizeSm),
        ),
      ),
    );
  }
}

void showCreateGroupPopup(BuildContext context, Color themeColor) {
  final dark = EHelperFunctions.isDarkMode(context);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: dark ? EColors.black : EColors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ESizes.s20)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(ESizes.s20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: Title and Close Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Create Group",
                      style: TextStyle(
                          fontSize: ESizes.s24, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Group Image Picker Placeholder
                const EImagePicker(),

                const SizedBox(height: 25),

                // Group Name Input
                TextFormField(
                    decoration: const InputDecoration(
                        labelText: "Enter group name",
                        labelStyle: TextStyle(
                          color: EColors.textPlaceholder,
                          fontSize: ESizes.fontSizeMd,
                        ))),

                const SizedBox(height: ESizes.s16),

                // Description Input
                TextFormField(
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: "Enter description...",
                      hintStyle: TextStyle(
                        color: EColors.textPlaceholder,
                        fontSize: ESizes.s16,
                      ),
                    )),

                const SizedBox(height: 20),

                // Group Type Selection
                const Text("Select Group Type",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),

                // Radio buttons (Private/Public)
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: 1,
                        onChanged: (val) {},
                        activeColor: EColors.primary),
                    const Text("Private"),
                    const SizedBox(width: ESizes.s16),
                    Radio(
                        value: 2,
                        groupValue: 1,
                        onChanged: (val) {},
                        activeColor: EColors.primary),
                    const Text("Public"),
                  ],
                ),
                const SizedBox(height: 20),

                // Create Button
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Create Group"))),
              ],
            ),
          ),
        ),
      );
    },
  );
}
