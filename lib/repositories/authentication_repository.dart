import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationRepository extends GetxController{
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final supabase = Supabase.instance.client;

  User? get authUser => supabase.auth.currentUser;


  Future<void> login(String email, String password) async{
    try{
      await supabase.auth.signInWithPassword(
        email: email,
        password: password
      );
    }on AuthException catch (e){
      print(e.message);
    }catch(e){
      print(e);
    }
  }

}