import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class TrendingReels extends StatelessWidget {
  const TrendingReels({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 0.5625,
      ),
      itemBuilder: (_, index) {
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                OrbixImages.logo,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 1,
              left: 7,
              child: Row(
                children: [
                  Icon(CupertinoIcons.eye, size: 15, color: Colors.white),
                  const SizedBox(width: OrbixSizes.xs),
                  Text("2.8k", style: TextStyle(fontSize: 13, color: Colors.white)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
