import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/pages/login_screen.dart';
import 'package:stayfinder/widgets/buttom_navigation_bar_widget.dart';

import '../core/providers/app_provider.dart';
import 'on_boarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 3), () async{
    AppProvider appProvider =    context.read<AppProvider>();
    await context.read<AppProvider>().init();
    
    
   print( "isCompleteOnBoarding : ${appProvider.isCompleteOnBoarding}",);
   print("Auth : ${appProvider.isAuthenticated}");



        if (appProvider.isCompleteOnBoarding == false) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => OnboardingScreen()),
          );
        } else {
          if (appProvider.isAuthenticated) {
           Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationBarWidget()),
          );
          } else {
         Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
          }
        }
      });
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
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            SizedBox(height: 48.h),
            CircularProgressIndicator(color: Color(0xFF99462A)),
          ],
        ),
      ),
    );
  }
}
