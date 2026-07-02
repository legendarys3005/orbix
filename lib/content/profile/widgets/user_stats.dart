import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ProfileUserStats extends StatelessWidget {
  const ProfileUserStats({super.key, required this.posts, required this.followers, required this.following});

  final String posts;
  final String followers;
  final String following;

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.all(OrbixSizes.sm),
      decoration: BoxDecoration(
          color: dark? Color(0xFF222222): Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(OrbixSizes.borderRadiusMd)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("Posts", style: TextStyle(fontWeight: FontWeight.w700)),
              Text(posts)
            ],
          ),
          Column(
            children: [
              Text("Followers", style: TextStyle(fontWeight: FontWeight.w700)),
              Text(followers)
            ],
          ),
          Column(
            children: [
              Text("Following", style: TextStyle(fontWeight: FontWeight.w700)),
              Text(following)
            ],
          ),
        ],
      ),
    );
  }
}
