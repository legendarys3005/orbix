class OrbixFormatter{
  static String formatPhoneNumber(String phoneNumber){
    final parts = phoneNumber.split("-");
    if(parts.length <= 1){
      return phoneNumber;
    }
    return "${parts[0]} ${parts[1]}";
  }
}