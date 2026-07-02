import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/content/home/widgets/post_icons.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class OrbixPostWidget extends StatelessWidget {
  const OrbixPostWidget({
    super.key,
    required this.postImage,
    required this.profileImage,
    required this.name,
    required this.metadata,
    required this.caption,
  });

  final String profileImage;
  final String name;
  final String metadata;
  final String postImage;
  final String caption;

  @override
  Widget build(BuildContext context) {
    RxBool isLiked = false.obs;
    RxBool saved = false.obs;
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withAlpha((255 * 0.5).round())),
        borderRadius: BorderRadius.circular(OrbixSizes.lg),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Heading
          Padding(
            padding: const EdgeInsets.all(OrbixSizes.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 38,
                      height: 38,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(profileImage),
                      ),
                    ),
                    const SizedBox(width: OrbixSizes.sm),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                        Text(metadata, style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 20,
                  visualDensity: VisualDensity.compact,
                  icon: Icon(CupertinoIcons.ellipsis_vertical),
                ),
              ],
            ),
          ),
          //Post
          GestureDetector(onDoubleTap: () => isLiked.value = true, child: Image.asset(postImage)),
          //Bottom
          Padding(
            padding: const EdgeInsets.all(OrbixSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Obx(
                        () => OrbixPostIcons(
                            icon: Icon(
                              !isLiked.value
                                  ? CupertinoIcons.heart
                                  : CupertinoIcons.heart_fill,
                              color: isLiked.value
                                  ? Colors.red
                                  : dark? Colors.white: Colors.black,
                            ),
                            onIconPressed: () => isLiked.value = !isLiked.value,
                            count: "1.2k",
                          ),
                        ),
                        OrbixPostIcons(
                          icon: Icon(Icons.mode_comment_outlined, color: dark? Colors.white: Colors.black),
                          count: "482",
                        ),
                        OrbixPostIcons(
                          icon: Icon(Iconsax.send_1, color: dark? Colors.white: Colors.black),
                          count: "1k",
                        ),
                      ],
                    ),
                    Obx(
                    () => OrbixPostIcons(
                        icon: Icon(saved.value? CupertinoIcons.bookmark_fill: CupertinoIcons.bookmark, color: dark? Colors.white: Colors.black),
                      onIconPressed: () => saved.value = !saved.value,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: OrbixSizes.sm),
                RichText(
                  text: TextSpan(
                    text: "$name  ",
                    style: GoogleFonts.geist(fontWeight: FontWeight.w600, color: dark? Colors.white: Colors.black),
                    children: [
                      TextSpan(
                        text: caption,
                        style: GoogleFonts.geist(fontWeight: FontWeight.w400)
                      )
                    ]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
