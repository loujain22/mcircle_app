import 'package:mcircle_app/common/widgets/images/circular_image.dart';
import 'package:mcircle_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(
          image: 'assets/images/user/user.jpg',
          width: 50,
          height: 50,
          padding: 0),
      title: Text('Ahmed Mohamed',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: EColors.white)),
      subtitle: Text('Ahmed@gmail.com',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .apply(color: EColors.white)),
      trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Iconsax.edit_copy,
            color: EColors.white,
          )),
    );
  }
}
