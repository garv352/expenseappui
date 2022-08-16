import 'package:flutter/material.dart';
import 'package:walletapp/Widgets/expenses.dart';
import 'package:walletapp/Widgets/rnd.dart';
import 'package:walletapp/data.dart';

import 'Widgets/cardSection.dart';
import 'Widgets/header.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Circular'),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          // SizedBox(height: 20),
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   child: OnboardingScreen(),
          // ),
          Expanded(child: CardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
