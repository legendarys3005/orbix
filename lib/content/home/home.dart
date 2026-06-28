import 'package:flutter/material.dart';
import 'package:orbix/common/widget/appbars/home_appbar.dart';
import 'package:orbix/content/home/widgets/post_widget.dart';
import 'package:orbix/content/home/widgets/story_section.dart';
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
        child: CustomScrollView(
          slivers: [
            ///Story Section
            SliverToBoxAdapter(
              child: Column(
                children: [
                  OrbixStorySection(),
                  const SizedBox(height: OrbixSizes.spaceBtwSections),
                ],
              ),
            ),

            ///Posts
            SliverList.separated(
              itemCount: 10,
              separatorBuilder: (_, _) =>
                  const SizedBox(height: OrbixSizes.spaceBtwItems),
              itemBuilder: (_, index) {
                return OrbixPostWidget(
                  profileImage: OrbixImages.pfp,
                  postImage: OrbixImages.logo,
                  name: "King Sapiens",
                  metadata: "King Sapiens — Original Audio",
                  caption: "Connect, share, and explore with a privacy-first social experience",
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
