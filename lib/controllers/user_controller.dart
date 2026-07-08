import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/images/circular_images.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  void showAccountBottomSheet(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: OrbixColors.darkBackgroundColor,
      showDragHandle: true,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: OrbixSizes.paddingMd),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // padding: const EdgeInsets.only(top: OrbixSizes.sm),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(30),
                          ),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: OrbixSizes.md,
                              vertical: OrbixSizes.paddingMd,
                            ),
                            child: Row(
                              children: [
                                DottedBorder(
                                  options: CircularDottedBorderOptions(
                                    color: Colors.grey.withAlpha(
                                      (255 * 0.8).round(),
                                    ),
                                    strokeWidth: 2,
                                    dashPattern: [4, 4],
                                  ),
                                  child: SizedBox(
                                    width: 43,
                                    height: 43,
                                    child: Center(
                                      child: Icon(
                                        Iconsax.add,
                                        size: 21,
                                        color: dark
                                            ? OrbixColors.darkPrimaryColor
                                            : OrbixColors.primaryColor,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: OrbixSizes.lg / 2),
                                Text(
                                  "Add New Account",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ...List.generate(8, (index) {
                          return InkWell(
                            borderRadius: index == 7
                                ? BorderRadius.vertical(
                                    bottom: Radius.circular(30),
                                  )
                                : BorderRadius.zero,
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: OrbixSizes.md,
                                vertical: OrbixSizes.paddingMd,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      OrbixCircularImages(
                                        width: 45,
                                        imageUrl: OrbixImages.pfp,
                                      ),
                                      const SizedBox(width: OrbixSizes.lg / 2),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "king_sapiens",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Visibility(
                                            visible: index % 2 == 0,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 6,
                                                  width: 6,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          10,
                                                        ),
                                                    color: OrbixColors
                                                        .darkPrimaryColor,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: OrbixColors
                                                            .darkPrimaryColor
                                                            .withAlpha(
                                                              (255 * 0.6)
                                                                  .round(),
                                                            ),
                                                        blurRadius: 3,
                                                        spreadRadius: 1,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: OrbixSizes.sm,
                                                ),
                                                Text(
                                                  "2 chats and 1 more",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12,
                                                    color: Colors.white60,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Visibility(
                                        visible: index == 0,
                                        child: Icon(
                                          Iconsax.tick_circle5,
                                          color: OrbixColors.darkPrimaryColor,
                                          shadows: [
                                            BoxShadow(
                                              color: OrbixColors
                                                  .darkPrimaryColor
                                                  .withAlpha(
                                                    (255 * 0.6).round(),
                                                  ),
                                              blurRadius: 20,
                                              spreadRadius: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: OrbixSizes.md),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 170,
                  child: Image.asset(OrbixImages.logoExpandedTransparent),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
