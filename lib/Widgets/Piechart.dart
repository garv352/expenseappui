import 'dart:math';

import 'package:flutter/material.dart';
import 'package:walletapp/data.dart';

class Piechart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: customShadow,
            color: primaryColor),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PiechartPainter(),
              ),
            ),
            Center(
              child: Container(
                height: 80,
                width: 100,
                child: Center(
                  child: Text(' ₹ 1000 ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: customShadow,
                    color: primaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PiechartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;

    double total = 0;
    expenses.forEach((element) {
      total += element['amount'];
    });
    var startRadian = -pi / 2;
    for (int i = 0; i < expenses.length; i++) {
      var currentExpenes = expenses[i];
      var sweepRadius = (currentExpenes['amount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadius, false, paint);
      startRadian += sweepRadius;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
