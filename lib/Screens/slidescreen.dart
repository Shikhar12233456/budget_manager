import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:budget_manager/Screens/Auth/auth.dart';
import 'package:budget_manager/Screens/homescreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class slideScreen extends StatefulWidget {
  const slideScreen({Key? key}) : super(key: key);

  @override
  State<slideScreen> createState() => _slideScreenState();
}

// ignore: camel_case_types
class _slideScreenState extends State<slideScreen> {
  static User? _user = FirebaseAuth.instance.currentUser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    _user != null ? HomeScreen() : authScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: const Image(
          image: AssetImage('assets/sScreen.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
