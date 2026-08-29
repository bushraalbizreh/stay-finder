import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'on_boarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F1EC),

      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            SizedBox(
              width: 162,
              height: 208,
              child: Image.asset("assets/images/icon.png"),
            ),
            Text(
              "StayFinder",
              style: TextStyle(
                color: Color(0xFF99462A),
                fontSize: 32.spMin,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat-VariableFont_wght',
              ),
            ),
            SizedBox(height: 48.h),
            CircularProgressIndicator(color: Color(0xFF99462A)),
          ],
        ),
      ),
    );
  }
}
