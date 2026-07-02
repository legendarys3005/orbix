import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class TaggedSection extends StatelessWidget {
  const TaggedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          childAspectRatio: 0.75
      ),
      itemCount: 15,
      itemBuilder: (_, index){
        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                OrbixImages.logo,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 5,
              right: 5,
              child: index%4 == 3? Icon(Iconsax.square, color: Colors.white): Icon(Icons.smart_display_outlined, color: Colors.white),
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
