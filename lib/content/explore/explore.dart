import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/content/explore/widgets/trending_reels.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: OrbixSizes.sm,
                  vertical: OrbixSizes.md,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: OrbixSizes.sm,
                  ),
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: (dark ? Colors.white : Colors.black).withAlpha(
                        (255 * 0.1).round(),
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: dark ? Colors.white12 : Colors.black12,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.search_normal,
                        size: 20,
                        color: dark ? Colors.white70 : Colors.black87,
                      ),
                      const SizedBox(width: OrbixSizes.sm),
                      Text(
                        "Search for Profiles, Reels and Audio",
                        style: TextStyle(
                          fontSize: 15,
                          color: dark ? Colors.white54 : Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: OrbixSizes.xs),
                child: SizedBox(
                  height: 30,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    separatorBuilder: (_, _) => const SizedBox(width: OrbixSizes.sm),
                    itemBuilder: (_, index) {
                      return Container(
                        padding: const EdgeInsets.symmetric(horizontal: OrbixSizes.sm, vertical: OrbixSizes.xs),
                        height: 10,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70),
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Text("#orbixindia"),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: OrbixSizes.spaceBtwItems,
              ),
            ),
            TrendingReels(),
          ],
        ),
      ),
    );
  }
}
