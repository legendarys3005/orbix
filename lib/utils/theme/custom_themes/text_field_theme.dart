import 'package:flutter/material.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/constant/sizes.dart';

class OrbixInputFieldTheme{
  OrbixInputFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: OrbixColors.iconColor,
    suffixIconColor: OrbixColors.iconColor,
    hintStyle: const TextStyle().copyWith(fontSize: OrbixSizes.fontSizeSm, color: Colors.black.withAlpha((255*0.4).round())),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OrbixSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Color(0xFFE0E0E0))
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OrbixSizes.focusedInputFieldRadius),
      borderSide: const BorderSide(width: 2,color: OrbixColors.primaryColor)
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: OrbixColors.darkIconColor,
    suffixIconColor: OrbixColors.darkIconColor,
    hintStyle: const TextStyle().copyWith(fontSize: OrbixSizes.fontSizeSm, color: Colors.white.withAlpha((255*0.4).round())),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OrbixSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: Color(0xFFBCBCBC))
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(OrbixSizes.focusedInputFieldRadius),
      borderSide: const BorderSide(width: 2,color: OrbixColors.darkPrimaryColor)
    ),
  );

}