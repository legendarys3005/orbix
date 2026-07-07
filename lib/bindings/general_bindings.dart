import 'package:get/get.dart';
import 'package:orbix/controllers/login_controller.dart';

class GeneralBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
  }
}