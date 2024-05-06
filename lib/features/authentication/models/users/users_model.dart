import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shop/utils/formatters/formatters.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String userName;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel(
      {required this.id,
      required this.userName,
      required this.email,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.profilePicture});

// helper function to get fullname
  String get fullName => '$firstName $lastName';
  String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);
  static List<String> nameParts(fullName) => fullName.split(' ');

  // static function to generate a username from the full name
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(' ');
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername = '$firstName$lastName';
    String usernameWithPrefix = 'cwt_$camelCaseUsername';

    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
      id: '',
      userName: '',
      email: '',
      phoneNumber: '',
      firstName: '',
      lastName: '',
      profilePicture: '');

//convert model to Jsons structure for storing data in firebase
  Map<String, dynamic> toJson() {
    return {
      'FirstName': firstName,
      'LastName': lastName,
      'UserName': userName,
      'Email': email,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture
    };
  }

  // factory method to create a usermodel from firebase document snapshot
  factory UserModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
          id: document.id,
          userName: data['UserName'] ?? '',
          email: data['Email'] ?? '',
          phoneNumber: data['PhoneNumber'] ?? '',
          firstName: data['FirstName'] ?? '',
          lastName: data['LastName'] ?? '',
          profilePicture: data['ProfilePicture'] ?? '');
    } else {
      return UserModel.empty();
    }
  }
}
