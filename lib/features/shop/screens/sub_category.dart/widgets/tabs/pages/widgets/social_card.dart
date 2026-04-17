import 'package:flutter/material.dart';
import 'package:mcircle_app/utils/constants/sizes.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key,
    required this.themeColor,
  });

  final Color themeColor;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> groups = [
      {
        "name": "Woman Accessories",
        "message": "No messages yet",
        "time": "04:13 pm",
        "image": "assets/social_images/woman_accessories.png",
      },
      {
        "name": "Property for Rent",
        "message": "No messages yet",
        "time": "04:13 pm",
        "image": "assets/social_images/rent.png",
      },
      {
        "name": "Services",
        "message": "No messages yet",
        "time": "04:13 pm",
        "image": "assets/social_images/services.png",
      },
      {
        "name": "Home Appliance",
        "message": "No messages yet",
        "time": "04:13 pm",
        "image": "assets/social_images/home_appliance.png",
      },
    ];
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: groups.length,
      separatorBuilder: (context, index) => const Divider(
        height: 40,
        color: Colors.black12,
        thickness: 0.5,
      ),
      itemBuilder: (context, index) {
        final group = groups[index];
        return Row(
          children: [
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(ESizes.s8),
              decoration: BoxDecoration(
                color: themeColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                group['image'],
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    Icon(Icons.error, color: themeColor),
              ),
            ),
            const SizedBox(width: ESizes.s16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    group['name'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    group['message'],
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.done_all, color: Colors.blue, size: 18),
                const SizedBox(height: 6),
                Text(
                  group['time'],
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
