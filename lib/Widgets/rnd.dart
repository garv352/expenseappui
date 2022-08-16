import 'package:flutter/material.dart';

// import 'package:finfloww/Functions/navigationsfunc.dart';

// import 'package:finfloww/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFCADCED),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     stops: [
          //   1,
          //   0.0
          // ],
          //     colors: [
          //   Color.fromRGBO(17, 17, 17, 1),
          //   Color.fromRGBO(22, 23, 27, 1)
          // ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      right: 35, top: MediaQuery.of(context).size.height / 3.2),
                  child: Image.asset(
                    "assets/flutter_logo.png",
                    height: 227,
                    width: 230,
                  ),
                ),

                Text(
                  "Mobile app development",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3),
                Text(
                  "android and ios",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),

                // style: GoogleFonts.inter(
                //   textStyle: const TextStyle(
                //       fontSize: 25,
                //       color: Colors.white,
                //       // fontWeight: FontWeight.bold,
                //       fontWeight: FontWeight.w700),
                // )),
                // Text(
                //   'Finance community!',
                //   // style: GoogleFonts.inter(
                //   //   textStyle: const TextStyle(
                //   //       fontSize: 28,
                //   //       color: Color.fromRGBO(0, 255, 177, 1),
                //   //       fontWeight: FontWeight.w700),
                //   // ),
                // ),
                const SizedBox(height: 40),

                SizedBox(
                  height: MediaQuery.of(context).size.height / 12,
                ),
              ],
            ),
          ),
        ));
  }
}
