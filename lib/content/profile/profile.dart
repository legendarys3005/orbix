import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/common/widget/appbars/profile_appbar.dart';
import 'package:orbix/common/widget/images/circular_images.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProfileAppbar(),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(OrbixSizes.defaultSpace),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //User Data
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          OrbixCircularImages(
                            width: 60,
                            imageUrl: OrbixImages.pfp,
                          ),
                          const SizedBox(width: OrbixSizes.sm),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Talentless Homo Sapiens", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
                                  const SizedBox(width: OrbixSizes.xs),
                                  Icon(Iconsax.verify5, size: 22, color: OrbixColors.primaryColor),
                                ],
                              ),
                              Text("king_sapiens"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: OrbixSizes.sm),
                      //Bio and data
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("male", style: TextStyle(color: Colors.black45)),
                          Text("Dancer🍂\nFlutist🪈\nText Editor😎\nGamer🎮\n#HereJustToBeHere", style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      const SizedBox(height: OrbixSizes.spaceBtwItems),
                      //User Stats
                      Container(
                        padding: const EdgeInsets.all(OrbixSizes.sm),
                        decoration: BoxDecoration(
                            color: Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(OrbixSizes.borderRadiusMd)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text("Posts", style: TextStyle(fontWeight: FontWeight.w700)),
                                Text("50")
                              ],
                            ),
                            Column(
                              children: [
                                Text("Followers", style: TextStyle(fontWeight: FontWeight.w700)),
                                Text("1.4k")
                              ],
                            ),
                            Column(
                              children: [
                                Text("Following", style: TextStyle(fontWeight: FontWeight.w700)),
                                Text("532")
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: OrbixSizes.spaceBtwItems),
                      //Buttons
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xFFF0F0F0),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text("Edit Profile", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                            ),
                          ),
                          const SizedBox(width: OrbixSizes.spaceBtwItems),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Color(0xFFF0F0F0),
                                foregroundColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text("Share Profile", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverAppBar(
                automaticallyImplyLeading: false,
                toolbarHeight: 0,
                backgroundColor: Colors.white,
                bottom: const TabBar(
                  indicatorColor: OrbixColors.primaryColor,
                  splashFactory: NoSplash.splashFactory,
                  tabs: [
                    Tab(icon: Icon(Icons.grid_on, color: OrbixColors.primaryColor,)),
                    Tab(icon: Icon(Icons.video_library, color: OrbixColors.primaryColor,)),
                    Tab(icon: Icon(Icons.person_pin, color: OrbixColors.primaryColor,)),
                  ],
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.all(OrbixSizes.defaultSpace),
            child:  TabBarView(
              children: [
                Center(child: Text("Posts")),
                Center(child: Text("Reels")),
                Center(child: Text("Tagged")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
