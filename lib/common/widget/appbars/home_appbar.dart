import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key, this.appbarHeight});

  final double? appbarHeight;

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.notification, size: 30),
            ),
            Text("Orbix", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor)),
            IconButton(onPressed: () {}, icon: Icon(Iconsax.message_text, size: 30)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appbarHeight ?? kToolbarHeight);
}
