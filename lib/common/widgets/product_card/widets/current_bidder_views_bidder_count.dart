import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class CurrentBidderAndViewsAndBidderCount extends StatelessWidget {
  const CurrentBidderAndViewsAndBidderCount({
    super.key,
    this.isAuction = false,
    required this.themeColor,
    this.showEndedStatus = false,
    this.showBidderCount = false,
  });

  final bool isAuction;
  final Color themeColor;
  final bool showEndedStatus;
  final bool showBidderCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // -- Current Bidder
        if (isAuction)
          Row(
            children: [
              Icon(
                Icons.gavel_rounded,
                color: themeColor,
                size: 18,
              ),
              const SizedBox(width: 4),
              const Text(
                "15",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          )
        else
          // -- Views
          Row(
            children: [
              Icon(
                Iconsax.eye,
                color: themeColor,
                size: 18,
              ),
              const SizedBox(width: 4),
              const Text(
                "10",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),

        // -- Bidder Count
        if (showBidderCount)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.people_alt_rounded,
                  color: themeColor, size: ESizes.s16),
              const SizedBox(width: ESizes.s4),
              const Text(
                "10",
                style: TextStyle(color: EColors.white, fontSize: ESizes.s12),
              ),
            ],
          ),
      ],
    );
  }
}
