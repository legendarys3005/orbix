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

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
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
              backgroundColor: OrbixColors.backgroundColor,
              indicatorColor: OrbixColors.primaryColor.withAlpha(
                (225 * 0.2).round(),
              ),
              destinations: [
                NavigationDestination(icon: Icon(CupertinoIcons.home), selectedIcon: Icon(CupertinoIcons.house_fill), label: "Home"),
                NavigationDestination(icon: Icon(CupertinoIcons.play_rectangle), selectedIcon: Icon(CupertinoIcons.play_rectangle_fill), label: "Reels"),
                NavigationDestination(icon: Icon(CupertinoIcons.add_circled), selectedIcon: Icon(CupertinoIcons.add_circled_solid), label: "Create"),
                NavigationDestination(icon: Icon(CupertinoIcons.compass), selectedIcon: Icon(CupertinoIcons.compass_fill), label: "Explore"),
                NavigationDestination(icon: Icon(CupertinoIcons.person_crop_circle), selectedIcon: Icon(CupertinoIcons.person_crop_circle_fill), label: "Profile"),
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
