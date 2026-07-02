import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbix/content/create/create.dart';
import 'package:orbix/content/explore/explore.dart';
import 'package:orbix/content/home/home.dart';
import 'package:orbix/content/profile/profile.dart';
import 'package:orbix/content/reels/reels.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.symmetric(horizontal: OrbixSizes.sm),
            child: NavigationBar(
              height: 60,
              elevation: 0,
              selectedIndex: NavigationController.selectedIndex.value,
              onDestinationSelected: (index) =>
                  NavigationController.selectedIndex.value = index,
              backgroundColor: dark? OrbixColors.darkBackgroundColor: OrbixColors.backgroundColor,
              indicatorColor: (dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor).withAlpha(
                (225 * 0.2).round(),
              ),
              destinations: [
                NavigationDestination(icon: Icon(CupertinoIcons.home, color: dark? Colors.white: Colors.black), selectedIcon: Icon(CupertinoIcons.house_fill, color: dark? Colors.white: Colors.black), label: "Home"),
                NavigationDestination(icon: Icon(CupertinoIcons.play_rectangle, color: dark? Colors.white: Colors.black), selectedIcon: Icon(CupertinoIcons.play_rectangle_fill, color: dark? Colors.white: Colors.black), label: "Reels"),
                NavigationDestination(icon: Icon(CupertinoIcons.add_circled, color: dark? Colors.white: Colors.black), selectedIcon: Icon(CupertinoIcons.add_circled_solid, color: dark? Colors.white: Colors.black), label: "Create"),
                NavigationDestination(icon: Icon(CupertinoIcons.compass, color: dark? Colors.white: Colors.black), selectedIcon: Icon(CupertinoIcons.compass_fill, color: dark? Colors.white: Colors.black), label: "Explore"),
                NavigationDestination(icon: Icon(CupertinoIcons.person_crop_circle, color: dark? Colors.white: Colors.black), selectedIcon: Icon(CupertinoIcons.person_crop_circle_fill, color: dark? Colors.white: Colors.black), label: "Profile"),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.getScreen()),
    );
  }
}

class NavigationController extends GetxController {
  static final RxInt selectedIndex = 0.obs;

  Widget getScreen() {
    final screens = [
      const HomePage(),
      const ReelsPage(),
      const CreatePage(),
      const ExplorePage(),
      const ProfilePage(),
    ];
    return screens[selectedIndex.value];
  }
}
