import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orbix/utils/constant/colors.dart';
import 'package:orbix/utils/theme/custom_themes/text_field_theme.dart';

class OrbixTheme{
  OrbixTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.geist().fontFamily,
    brightness: Brightness.light,
    primaryColor: OrbixColors.primaryColor,
    // textTheme: NexsusTextTheme.lightTextTheme,
    // chipTheme: NexsusChipTheme.lightChipTheme,
    scaffoldBackgroundColor: OrbixColors.backgroundColor,
    // appBarTheme: NexsusAppBarTheme.lightAppBarTheme,
    // checkboxTheme: NexsusCheckboxTheme.lightCheckboxTheme,
    // bottomSheetTheme: NexsusBottomSheetTheme.lightBottomSheetTheme,
    // elevatedButtonTheme: NexsusElevatedButtonTheme.lightElevatedButtonTheme,
    // outlinedButtonTheme: NexsusOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: OrbixInputFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.geist().fontFamily,
    brightness: Brightness.dark,
    primaryColor: OrbixColors.darkPrimaryColor,
    scaffoldBackgroundColor: OrbixColors.darkBackgroundColor,
    inputDecorationTheme: OrbixInputFieldTheme.darkInputDecorationTheme,
  );
}