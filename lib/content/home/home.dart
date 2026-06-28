import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/appbars/home_appbar.dart';
import 'package:orbix/content/home/widgets/story_widget.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(OrbixSizes.paddingMd),
        child: Column(
          children: [
            //Story Section
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StoryWidget(
                  thumbnail: DottedBorder(
                    options: CircularDottedBorderOptions(
                      color: Colors.grey.withAlpha((255 * 0.8).round()),
                      strokeWidth: 2,
                      dashPattern: [4, 4],
                    ),
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: Icon(
                          Iconsax.add,
                          size: 35,
                          color: OrbixColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                  title: "Your Story",
                ),
                const SizedBox(width: OrbixSizes.spaceBtwItems/2),
                Expanded(
                  child: SizedBox(
                    height: 90,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 8,
                      separatorBuilder: (_, _) =>
                          const SizedBox(width: OrbixSizes.md),
                      itemBuilder: (_, index) {
                        return StoryWidget(
                          thumbnail: SizedBox(
                            width: 65,
                            height: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(OrbixImages.pfp),
                            ),
                          ),
                          title: "King Sapiens",
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: OrbixSizes.spaceBtwSections),
            //Posts
            ListView.separated(
              shrinkWrap: true,
              itemCount: 10,
              separatorBuilder: (_, _) => const SizedBox(height: OrbixSizes.spaceBtwItems),
              itemBuilder: (_, index){
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("King Sapiens"),
                        ],
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
