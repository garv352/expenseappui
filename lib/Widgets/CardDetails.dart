import 'package:flutter/material.dart';
import 'package:walletapp/data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
                width: 187, child: Image.asset('assets/mastercardlogo.png')),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(27.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: primaryColor,
                boxShadow: customShadow,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 11.0),
                  child: Row(
                    children: [
                      Text(
                        "**** **** ****",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 3),
                      Text(
                        '5207',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ),
                Text(
                  'PLATINUM CARD',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
