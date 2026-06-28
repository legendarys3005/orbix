import 'package:flutter/material.dart';

class OrbixCircularImages extends StatelessWidget {
  const OrbixCircularImages({super.key, required this.width, required this.imageUrl});

  final double width;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(width),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
