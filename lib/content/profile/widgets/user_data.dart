import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/images/circular_images.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ProfileUserData extends StatelessWidget {
  const ProfileUserData({
    super.key,
    required this.profilePicture,
    required this.username,
    required this.displayName,
    required this.bio,
    this.isVerified = false,
  });

  final String profilePicture;
  final String username;
  final String displayName;
  final String bio;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //User Data
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            OrbixCircularImages(width: 60, imageUrl: profilePicture),
            const SizedBox(width: OrbixSizes.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      displayName,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: OrbixSizes.xs),
                    Visibility(
                      visible: isVerified,
                      child: Icon(
                        Iconsax.verify5,
                        size: 22,
                        color: OrbixColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                Text(username),
              ],
            ),
          ],
        ),
        const SizedBox(height: OrbixSizes.md),
        //Bio and data
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("male", style: TextStyle(color: dark? Colors.white54: Colors.black45, fontSize: 12)),
            Text(
              bio,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}
