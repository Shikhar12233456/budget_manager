import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  var selectedDate = DateTime.now().obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  choseDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
            context: Get.context!,
            initialDate: selectedDate.value,
            firstDate: DateTime(2021),
            lastDate: DateTime(2024))
        .then((pd) {
      if (pd != null && pd != selectedDate.value) {
        selectedDate.value = pd;
      }
    });
  }
}
