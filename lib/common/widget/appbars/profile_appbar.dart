import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';

class ProfileAppbar extends StatelessWidget implements PreferredSizeWidget{
  const ProfileAppbar({super.key, this.appbarHeight});

  final double? appbarHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: OrbixSizes.sm,
        right: OrbixSizes.sm,
        bottom: OrbixSizes.xs,
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.withAlpha((255*0.5).round())))
      ),
      child: SafeArea(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: OrbixSizes.sm),
            GestureDetector(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("king_sapiens", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: OrbixColors.primaryColor)),
                  const SizedBox(width: OrbixSizes.xs),
                  Icon(Iconsax.arrow_down_1, size: 15, color: OrbixColors.primaryColor, fontWeight: FontWeight.w600),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.setting, size: 30)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight ?? kToolbarHeight);
}
