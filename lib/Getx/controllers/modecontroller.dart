import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mode {
  int id;
  Icon icon;
  String type;
  Mode({required this.id, required this.icon, required this.type});
}

class ModeController extends GetxController {
  final Mode selected = Mode(id: 1, icon: Icon(Icons.abc), type: 'UPI').obs();
  List<Mode> dropdownText = [
    Mode(id: 1, icon: Icon(Icons.abc), type: 'UPI'),
    Mode(id: 2, icon: Icon(Icons.policy), type: 'policy'),
    Mode(id: 3, icon: Icon(Icons.access_alarm_rounded), type: 'Alarm Rounded'),
  ];
  void setSelected(String value) {
    selected.type = value.toString();
  }
}
