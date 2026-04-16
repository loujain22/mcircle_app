import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class ProductCard extends StatefulWidget {
  final Color themeColor;
  const ProductCard({super.key, required this.themeColor});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 240,
      clipBehavior: Clip.antiAlias, // لضمان قص الحواف بشكل ناعم
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black, // قاعدة سوداء خلف الصورة
      ),
      child: Stack(
        children: [
          // 1. الصورة تأخذ مساحة الكارت بالكامل أو جزء كبير منه
          Positioned.fill(
            child: Image.asset(
              'assets/car1.jpg',
              fit: BoxFit.cover,
            ),
          ),

          // 2. طبقة التدرج الأسود (تجعل أسفل الصورة داكناً قليلاً ليظهر النص)
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.05), // شفاف جداً في الأعلى
                    Colors.black
                        .withOpacity(0.8), // سواد كافٍ لبروز النص في الأسفل
                  ],
                  stops: const [0.4, 0.6, 1.0],
                ),
              ),
            ),
          ),

          // 3. محتوى البطاقة (النص والبيانات)
          Column(
            mainAxisAlignment: MainAxisAlignment.end, // دفع المحتوى للأسفل
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // مساحة فارغة لترك الصورة تظهر في الأعلى
              const SizedBox(height: 140),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Product Card Title",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on,
                                color: widget.themeColor, size: 14),
                            const SizedBox(width: 4),
                            const Text(
                              "ar-Riyad",
                              style: TextStyle(
                                color: EColors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "ريال",
                              style: TextStyle(
                                color: widget.themeColor,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 2),
                            const Text(
                              "30.000",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.gavel_rounded, // أيقونة المطرقة
                              color: Color(0xFFF15934), // لونك البرتقالي
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Text(
                              "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.people_alt_rounded,
                                color: Color(0xFFF15934), size: ESizes.s16),
                            SizedBox(width: ESizes.s4),
                            Text(
                              "10", // مثال لعدد المزايدين
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // 4. زر المفضلة (القلب)
          Positioned(
            top: 10,
            left: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite; // عكس الحالة عند الضغط
                });
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  shape: BoxShape.circle,
                ),
                child: Icon(isFavorite ? Iconsax.heart : Iconsax.heart_copy,
                    color: isFavorite ? Colors.red : Colors.black, size: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
