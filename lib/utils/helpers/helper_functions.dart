import 'package:flutter/material.dart';

class OrbixHelperFunctions{
  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }
}