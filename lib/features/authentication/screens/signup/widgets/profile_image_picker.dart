import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mcircle_app/utils/constants/colors.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({super.key});

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? selectedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (selectedImage != null) {
      setState(() {
        _image = File(selectedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _pickImage,
        child: DottedBorder(
          options: const CircularDottedBorderOptions(
            color: EColors.primary, // لون البرتقالي
            strokeWidth: 2,
            dashPattern: [8, 4], // طول الشرطة ثم المسافة بين الشرطات
            padding: EdgeInsets.all(8),
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFEBE7), // الخلفية الفاتحة داخل الدائرة
            ),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xFFFEEFEB),
              backgroundImage: _image != null ? FileImage(_image!) : null,
              child: _image == null
                  ? const Icon(Icons.camera_alt,
                      size: 40, color: EColors.primary)
                  : null,
            ),
          ),
        ),
      ),
    );
  }
}
