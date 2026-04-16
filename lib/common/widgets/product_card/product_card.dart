import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/common/widgets/product_card/widets/current_bidder_views_bidder_count.dart';
import 'package:mcircle_app/common/widgets/product_card/widets/ended_status.dart';
import 'package:mcircle_app/common/widgets/product_card/widets/product_image.dart';
import 'package:mcircle_app/common/widgets/product_card/widets/product_location_and_price.dart';
import 'package:mcircle_app/common/widgets/product_card/widets/product_title.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class ProductCard extends StatefulWidget {
  final Color themeColor;
  final bool showEndedStatus;
  final bool showBidderCount;
  final String imagePath;
  final bool isAuction;
  const ProductCard(
      {super.key,
      required this.themeColor,
      this.showEndedStatus = false,
      this.showBidderCount = false,
      required this.imagePath,
      this.isAuction = false});

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
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Stack(
        children: [
          // -- Product Image
          Positioned.fill(
            child: ProductImage(imagePath: widget.imagePath),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 140),
              Padding(
                padding: const EdgeInsets.all(ESizes.s12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product Title
                    const ProductTitle(),
                    const SizedBox(height: ESizes.s4),
                    ProductLocationAndPrice(themeColor: widget.themeColor),
                    const SizedBox(height: ESizes.s4),

                    CurrentBidderAndViewsAndBidderCount(
                      themeColor: widget.themeColor,
                      isAuction: widget.isAuction,
                      showBidderCount: widget.showBidderCount,
                    )
                  ],
                ),
              ),
            ],
          ),

          // -- Favorite Icon
          Positioned(
            top: 12,
            left: 12,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isFavorite ? Iconsax.heart : Iconsax.heart_copy,
                  color: isFavorite ? Colors.red : Colors.black,
                  size: 18,
                ),
              ),
            ),
          ),

          // -- Ended Status

          if (widget.showEndedStatus)
            EndedStatus(themeColor: widget.themeColor),
        ],
      ),
    );
  }
}
