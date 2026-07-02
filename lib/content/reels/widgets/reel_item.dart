import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/images/circular_images.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ReelItem extends StatelessWidget {
  const ReelItem({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool following = false.obs;
    RxBool isLiked = false.obs;
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(OrbixImages.logo, fit: BoxFit.contain),
        ),
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onDoubleTap: () => isLiked.value = true,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.transparent,
                    Colors.black54,
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 16,
          bottom: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //User Data
              Row(
                children: [
                  OrbixCircularImages(width: 35, imageUrl: OrbixImages.pfp),
                  const SizedBox(width: OrbixSizes.sm),
                  Text(
                    "king_sapiens",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: OrbixSizes.md),
                  Obx(
                    () => GestureDetector(
                      onTap: () => following.value = !following.value,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          color: following.value
                              ? dark
                                    ? OrbixColors.darkPrimaryColor
                                    : OrbixColors.primaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            color: !following.value
                                ? Colors.white
                                : Colors.transparent,
                            width: 0.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: OrbixSizes.md,
                            vertical: OrbixSizes.xs,
                          ),
                          child: Text(
                            !following.value ? "Follow" : "Following",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: OrbixSizes.sm),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  "Connect, share, and explore with a privacy-first social experience",
                  style: TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        //Right Buttons
        Positioned(
          right: 12,
          bottom: 20,
          child: Column(
            children: [
              Obx(
                () => GestureDetector(
                  onTap: () => isLiked.value = !isLiked.value,
                  child: Icon(
                    !isLiked.value
                        ? CupertinoIcons.heart
                        : CupertinoIcons.heart_fill,
                    color: isLiked.value ? Colors.red : Colors.white,
                    size: 27,
                  ),
                ),
              ),
              Text("1.2k", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              GestureDetector(
                child: Icon(
                  Icons.mode_comment_outlined,
                  color: Colors.white,
                  size: 27,
                ),
              ),
              Text("47", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              GestureDetector(
                child: Icon(Iconsax.send_1, color: Colors.white, size: 27),
              ),
              Text("12", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              GestureDetector(
                child: Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.white,
                  size: 27,
                ),
              ),
              Text("9", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              GestureDetector(
                child: Icon(
                  CupertinoIcons.ellipsis_vertical,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              const SizedBox(height: OrbixSizes.spaceBtwSections),
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(OrbixImages.pfp),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
