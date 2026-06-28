import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbix/navigation_menu.dart';
import 'package:orbix/utils/theme/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Orbix());
}

class Orbix extends StatelessWidget {
  const Orbix({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: OrbixTheme.lightTheme,
      home: NavigationMenu(),
    );
  }
}