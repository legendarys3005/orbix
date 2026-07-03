import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class ReelSection extends StatelessWidget {
  const ReelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        childAspectRatio: 0.5625,
      ),
      itemCount: 30,
      itemBuilder: (_, index) {
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                OrbixImages.logo,
                fit: BoxFit.cover,
              ),
            ),
            Visibility(
              visible: index <= 2,
              child: Positioned(
                top: 5,
                right: 5,
                child: Icon(Icons.push_pin, color: Colors.white),
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
