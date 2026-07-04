import 'package:flutter/material.dart';
import 'package:orbix/content/explore/widgets/trending_reels.dart';
import 'package:orbix/utils/constant/sizes.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(OrbixSizes.md),
                child: TextFormField(),
              ),
            ),
            TrendingReels(),
          ],
        ),
      ),
    );
  }
}
