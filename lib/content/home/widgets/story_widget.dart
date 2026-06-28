import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/sizes.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key, required this.thumbnail, required this.title, required this.onPressed});

  final Widget thumbnail;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          thumbnail,
          const SizedBox(height: OrbixSizes.xs),
          Text(title, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
