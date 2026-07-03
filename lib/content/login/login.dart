import 'package:flutter/material.dart';
import 'package:orbix/content/login/widgets/login_footer.dart';
import 'package:orbix/content/login/widgets/login_form.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';
import 'package:orbix/utils/helpers/helper_functions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = OrbixHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(OrbixSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Orbix",
                      style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: dark
                            ? OrbixColors.darkPrimaryColor
                            : OrbixColors.primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: OrbixSizes.spaceBtwItems / 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Back to Orbix",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                LoginForm(),
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(fontSize: 13),
                    ),
                    const SizedBox(width: OrbixSizes.sm),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Create account",
                        style: TextStyle(
                          color: dark? OrbixColors.darkPrimaryColor: OrbixColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: OrbixSizes.spaceBtwItems),
                Row(
                  children: [
                    Flexible(
                      child: Divider(
                        color: (dark? Colors.white: Colors.black).withAlpha((255 * 0.5).round()),
                      ),
                    ),
                    const SizedBox(width: OrbixSizes.sm),
                    const Text("Or continue with"),
                    const SizedBox(width: OrbixSizes.sm),
                    Flexible(
                      child: Divider(
                        color: (dark? Colors.white: Colors.black).withAlpha((255 * 0.5).round()),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: OrbixSizes.spaceBtwSections),
                LoginFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
