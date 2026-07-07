import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:orbix/bindings/general_bindings.dart';
import 'package:orbix/content/login/login.dart';
import 'package:orbix/repositories/authentication_repository.dart';
import 'package:orbix/utils/theme/theme.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://dkexklplndjopzaasgfp.supabase.co",
    publishableKey: "sb_publishable_W9qup0T4vGi2vVljiuroBA_ao6fJCle",
  ).then((_) => Get.put(AuthenticationRepository()));

  runApp(const Orbix());
}

class Orbix extends StatelessWidget {
  const Orbix({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: OrbixTheme.lightTheme,
      darkTheme: OrbixTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: LoginPage(),
    );
  }
}