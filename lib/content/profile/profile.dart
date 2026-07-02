import 'package:flutter/material.dart';
import 'package:orbix/common/widget/appbars/profile_appbar.dart';
import 'package:orbix/content/profile/widgets/post_section.dart';
import 'package:orbix/content/profile/widgets/reel_section.dart';
import 'package:orbix/content/profile/widgets/tagged_section.dart';
import 'package:orbix/content/profile/widgets/user_data.dart';
import 'package:orbix/content/profile/widgets/user_stats.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: ProfileAppbar(),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(OrbixSizes.paddingLg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileUserData(
                        profilePicture: OrbixImages.pfp,
                        username: "king_sapiens",
                        displayName: "Talentless Homo Sapiens",
                        bio: "Dancer🍂\nFlutist🪈\nText Editor😎\nGamer🎮\n#HereJustToBeHere",
                        isVerified: true,
                      ),
                      const SizedBox(height: OrbixSizes.spaceBtwItems),
                      //User Stats
                      ProfileUserStats(
                        posts: "50",
                        followers: "1.4k",
                        following: "532",
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
                                backgroundColor: dark? Color(0xFF222222): Color(0xFFF0F0F0),
                                foregroundColor: dark? Colors.white: Colors.black,
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
                                backgroundColor: dark? Color(0xFF222222): Color(0xFFF0F0F0),
                                foregroundColor: dark? Colors.white: Colors.black,
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
                backgroundColor: dark? OrbixColors.darkBackgroundColor: OrbixColors.backgroundColor,
                bottom: TabBar(
                  indicatorColor: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor,
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
          body: TabBarView(
            children: [
              PostSection(),
              ReelSection(),
              TaggedSection(),
            ],
          ),
        ),
      ),
    );
  }
}
