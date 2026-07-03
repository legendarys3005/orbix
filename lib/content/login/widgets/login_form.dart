import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:orbix/navigation_menu.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    RxBool hidePassword = true.obs;
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: OrbixSizes.sm,
            ),
            child: Text(
              "Email Address",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: OrbixSizes.xs),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              hintText: "eg. john.doe.1234@orbix.social",
            ),
          ),
          const SizedBox(height: OrbixSizes.spaceBtwInputField),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: OrbixSizes.sm,
            ),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          const SizedBox(height: OrbixSizes.xs),
          Obx(
                () => TextFormField(
              obscureText: hidePassword.value,
              // obscuringCharacter: "◉",
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () =>
                  hidePassword.value = !hidePassword.value,
                  icon: Icon(
                    hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
                hintText: hidePassword.value
                    ? "••••••••••••••••••"
                    : "notJohnDoePassword",
              ),
            ),
          ),
          const SizedBox(height: OrbixSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () => Get.to(NavigationMenu()),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(OrbixSizes.sm)),
                  backgroundColor: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor,
                  foregroundColor: Colors.white
              ),
              child: Text("Login", style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
