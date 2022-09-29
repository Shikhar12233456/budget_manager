import 'package:budget_manager/Screens/transactions/makeTransaction.dart';
import 'package:budget_manager/widgets/Nav_bars/sideDrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        // leading: const CircleAvatar(
        //   backgroundImage: NetworkImage(/*user?.photoURL ??*/
        //       'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
        //   radius: 10,
        // ),
        actions: [
          Column(
            children: const [
              Text("Welcome back"),
              Text("Shikhar"),
            ],
          ),
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
            radius: 25,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            si_withgraph(),
            Container(
              child: const Text("Recent"),
            ),
            Container(
              child: const Text('MonthlyBudget'),
            ),
            Container(
              child: const Text("Analysis"),
            ),
            Container(
              child: const Text("remainders"),
            ),
            Container(
              child: const Text("Sliding Screen"),
            ),
            Container(
              child: const Text("Articles"),
            ),
            Container(
              child: const Text("Follow Us"),
            ),
            //For Adding transaction, Remainder,transfer
            FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const makeTransaction()));
              },
              child: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}

class si_withgraph extends StatelessWidget {
  si_withgraph({
    super.key,
  });
  var spend = 0;
  var income = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: Colors.amber),
        child: Column(
          children: [
            Text("Total Spends: $spend"),
            Text('Budget: $income'),
          ],
        ),
      ),
    );
  }
}
