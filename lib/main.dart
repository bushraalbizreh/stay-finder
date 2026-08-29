import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stayfinder/pages/cart_screen.dart';
import 'package:stayfinder/pages/details_screen.dart';
import 'package:stayfinder/pages/favorite_screen.dart';
import 'package:stayfinder/pages/home_screen.dart';
import 'package:stayfinder/pages/login_screen.dart';
import 'package:stayfinder/pages/profile_screen.dart';
import 'package:stayfinder/pages/search_screen.dart';
import 'package:stayfinder/widgets/navigation_buttom_bar_widget.dart';

import 'pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 902),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // theme: ThemeData(
          //   primarySwatch: Colors.blue,
          //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          // ),
          home: child,
        );
      },
      child: DetailsScreen(),
    );
  }
}
