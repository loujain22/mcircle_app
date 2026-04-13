import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final bool isFavorite;
  final double height;
  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.isFavorite = false,
    this.height = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // تحديد الارتفاع يحل مشكلة size.isFinite
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage('assets/car1.jpg'), // تأكدي من مسار الصورة
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // الـ Gradient لإيضاح النص
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height * 0.5, // نصف طول الكارت
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(20)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
                ),
              ),
            ),
          ),

          // زر المفضلة
          Positioned(
            top: 10,
            left: 10,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 15,
              child: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.black,
                size: 18,
              ),
            ),
          ),

          // تفاصيل المنتج
          Positioned(
            bottom: 12,
            right: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Text("Current Bid: ",
                        style: TextStyle(color: Colors.white70, fontSize: 10)),
                    Text(price,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12)),
                    const Spacer(),
                    const Icon(Icons.location_on,
                        color: Color(0xFFF0502C), size: 12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
