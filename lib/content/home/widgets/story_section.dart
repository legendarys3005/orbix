import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/content/home/widgets/story_widget.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class OrbixStorySection extends StatelessWidget {
  const OrbixStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StoryWidget(
            onPressed: (){},
            thumbnail: DottedBorder(
              options: CircularDottedBorderOptions(
                color: Colors.grey.withAlpha((255 * 0.8).round()),
                strokeWidth: 2,
                dashPattern: [4, 4],
              ),
              child: SizedBox(
                width: 73,
                height: 73,
                child: Center(
                  child: Icon(
                    Iconsax.add,
                    size: 35,
                    color: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor,
                  ),
                ),
              ),
            ),
            title: "Your Story",
          ),
          const SizedBox(width: OrbixSizes.spaceBtwItems),
          Expanded(
            child: SizedBox(
              height: 110,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                separatorBuilder: (_, _) =>
                const SizedBox(width: OrbixSizes.md),
                itemBuilder: (_, index) {
                  return StoryWidget(
                    onPressed: (){},
                    thumbnail: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor, width: 3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(OrbixImages.pfp),
                        ),
                      ),
                    ),
                    title: "King Sapiens",
                  );
                },
              ),
            ),
          ),
        ],
      );
  }
}
