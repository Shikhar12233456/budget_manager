import 'package:budget_manager/Screens/Auth/auth.dart';
import 'package:budget_manager/Screens/Auth/google_sign_in.dart';
import 'package:budget_manager/Screens/homescreen.dart';
import 'package:budget_manager/Screens/slidescreen.dart';
import 'package:budget_manager/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget_Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: authScreen(),
    );
  }
}
