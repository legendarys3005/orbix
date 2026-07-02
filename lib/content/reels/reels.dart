import 'package:flutter/material.dart';
import 'package:orbix/content/reels/widgets/reel_item.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Scaffold(
      backgroundColor: dark? Colors.black: Colors.white,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (_, index){
          return ReelItem();
        },
      ),
    );
  }
}
