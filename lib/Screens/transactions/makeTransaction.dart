import 'package:budget_manager/Getx/controllers/datecontroller.dart';
import 'package:budget_manager/Getx/controllers/modecontroller.dart';
import 'package:budget_manager/widgets/datepick.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class makeTransaction extends StatefulWidget {
  const makeTransaction({Key? key}) : super(key: key);
  @override
  State<makeTransaction> createState() => _makeTransactionState();
}

// ignore: camel_case_types
class _makeTransactionState extends State<makeTransaction> {
  ModeController mode = ModeController();
  final amountcontroller = TextEditingController();
  final notecontroller = TextEditingController();
  final datecontroller = TextEditingController();
  final daycontroller = TextEditingController();
  final typecontroller = TextEditingController();
  //String? amount;
  int? _value = 1;
  @override
  void dispose() {
    //datecontroller.dispose();
    amountcontroller.dispose();
    notecontroller.dispose();
    //datecontroller.dispose();
    super.dispose();
  }

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    print('========activity Made again========');
    var valueChose;
    return Scaffold(
      body: Column(
        children: [
          DropdownButton2(
            hint: const Text("Select Items: "),
            focusColor: Colors.white,
            icon: Icon(Icons.arrow_drop_down),
            value: valueChose,
            onChanged: (newValue) {
              setState(() {
                valueChose = newValue;
              });
            },
            items: items.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
          TextField(
            controller: amountcontroller,
            decoration: const InputDecoration(
              labelText: 'Amount',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              hintText: 'Enter amount',
            ),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: notecontroller,
            decoration: const InputDecoration(
              labelText: 'Note',
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 0.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              hintText: 'Enter Note',
            ),
            keyboardType: TextInputType.number,
          ),
          DateContainer(),
          TextButton(
              onPressed: () {
                print(amountcontroller.text);
                print(notecontroller.text);
                print(datecontroller.text);
                daycontroller.dispose();
                datecontroller.dispose();
                Navigator.pop(context);
              },
              child: const Text('Back'))
        ],
      ),
    );
  }
  
  
}





