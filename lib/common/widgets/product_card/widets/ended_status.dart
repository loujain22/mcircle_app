import 'package:flutter/material.dart';

class EndedStatus extends StatelessWidget {
  const EndedStatus({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      right: 12,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFFFEBEB),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.access_time_filled_rounded,
              color: themeColor,
              size: 14,
            ),
            const SizedBox(width: 4),
            Text(
              "Ended",
              style: TextStyle(
                color: themeColor,
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
