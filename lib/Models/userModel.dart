import 'package:firebase_auth/firebase_auth.dart';

class user {
  String? name;
  String? email;
  String? photoUrl;
  String? phoneNumber;

  user(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      required this.photoUrl});
}

getUser() async {
  User? _uuser = FirebaseAuth.instance.currentUser;

  user uSer = user(
      name: _uuser?.displayName.toString(),
      email: '',
      phoneNumber: '',
      photoUrl: '');
}
