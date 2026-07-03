import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/image_strings.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 135,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Google", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Container(
                    padding: const EdgeInsets.all(3),
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(OrbixImages.google)
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
