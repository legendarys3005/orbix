import 'package:orbix/utils/constant/enums.dart';
import 'package:orbix/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String username;
  final String displayName;
  final String email;
  final String phoneNumber;
  final String profilePicture;
  final String bio;
  final Gender gender;
  final DateTime dateOfBirth;
  final bool verified;
  final bool isPublic;
  final DateTime createdAt;

  const UserModel({
    required this.id,
    required this.username,
    required this.displayName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
    required this.bio,
    required this.gender,
    required this.dateOfBirth,
    required this.verified,
    required this.isPublic,
    required this.createdAt,
  });

  String get formattedPhoneNumber =>
      OrbixFormatter.formatPhoneNumber(phoneNumber);

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "username": username,
      "display_name": displayName,
      "email": email,
      "phone_number": phoneNumber,
      "profile_picture_url": profilePicture
    };
  }
}
