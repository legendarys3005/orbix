import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orbix/content/login/login.dart';
import 'package:orbix/utils/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://dkexklplndjopzaasgfp.supabase.co",
    publishableKey: "sb_publishable_W9qup0T4vGi2vVljiuroBA_ao6fJCle",
  );

  runApp(const Orbix());
}

class Orbix extends StatelessWidget {
  const Orbix({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OrbixTheme.lightTheme,
      darkTheme: OrbixTheme.darkTheme,
      home: LoginPage(),
    );
  }
}