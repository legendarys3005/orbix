import 'package:flutter/material.dart';
import 'package:orbix/content/reels/widgets/reel_item.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
