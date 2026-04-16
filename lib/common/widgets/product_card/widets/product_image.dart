import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String imagePath;

  const ProductImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // الصورة الأساسية
        Positioned.fill(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),

        // طبقة التدرج الأسود (Gradient) لضمان وضوح النصوص
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.05),
                  Colors.black.withOpacity(0.8),
                ],
                stops: const [0.4, 0.6, 1.0],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
