class OrbixValidator{
  static String? validateEmptyField(String? fieldName, String? value){
    if(value == null || value.isEmpty){
      return "$fieldName is Required";
    }

    return null;
  }

  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return "Email is required";
    }


    // Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }



    return null;
  }
}