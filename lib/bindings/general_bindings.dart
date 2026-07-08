import 'package:get/get.dart';
import 'package:orbix/controllers/login_controller.dart';
import 'package:orbix/controllers/user_controller.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
    Get.put(UserController());
  }
}