import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/images/circular_images.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class ReelItem extends StatelessWidget {
  const ReelItem({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool following = false.obs;
    return Stack(
      children: [
        Positioned.fill(child: Image.asset(OrbixImages.logo)),
        Positioned.fill(
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
                              ? OrbixColors.primaryColor
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
        Positioned(
          right: 12,
          bottom: 20,
          child: Column(
            children: [
              Icon(CupertinoIcons.heart, color: Colors.white, size: 27),
              Text("1.2k", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              Icon(Icons.mode_comment_outlined, color: Colors.white, size: 27),
              Text("47", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              Icon(Iconsax.send_1, color: Colors.white, size: 27),
              Text("12", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              Icon(CupertinoIcons.bookmark, color: Colors.white, size: 27),
              Text("9", style: TextStyle(color: Colors.white, fontSize: 10)),
              const SizedBox(height: OrbixSizes.spaceBtwItems),
              Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.white,
                size: 25,
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
