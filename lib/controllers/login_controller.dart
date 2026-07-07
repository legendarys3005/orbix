import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:orbix/navigation_menu.dart';
import 'package:orbix/repositories/authentication_repository.dart';

class LoginController extends GetxController{
  static LoginController get instance => Get.find();

  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  //Signs user in with email and password
  Future<void> emailAndPasswordSignIn() async{
    try{
      Get.defaultDialog(
        backgroundColor: Colors.transparent,
        title: "Logging you in...",
        content: CircularProgressIndicator(),
      );

      if(!loginFormKey.currentState!.validate()){
        Get.back();
        return;
      }

      await AuthenticationRepository.instance.login(email.text, password.text);
      Get.back();
      Get.to(NavigationMenu());
    }catch(e){
      print(e);
    }
  }
}