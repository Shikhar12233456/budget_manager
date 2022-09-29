import 'package:budget_manager/Getx/controllers/datecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateContainer extends StatefulWidget {
  DateContainer({Key? key}) : super(key: key);

  @override
  State<DateContainer> createState() => _DateContainerState();
}

class _DateContainerState extends State<DateContainer> {
  DateController date = DateController();
  @override
  Widget build(BuildContext context) {
    TextEditingController tec = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          date.choseDate(context);
        },
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: 'Date',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Obx(() => Text(DateFormat("dd-MM-yyyy")
              .format(date.selectedDate.value)
              .toString())),
        ),
      ),
    );
  }
}
