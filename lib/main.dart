import 'package:budget_manager/Screens/Auth/auth.dart';
import 'package:budget_manager/Screens/slidescreen.dart';
import 'package:flutter/material.dart';

void main() {
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
