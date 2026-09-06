import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFFFAF9F6),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFF2F1EC),
    ),

    // textTheme: TextTheme(
    //    bodyLarge:  TextStyle(
    //                         fontSize: 24.sp,
    //                         fontWeight: FontWeight.w700,
    //                         color: Colors.black,
    //                         fontFamily: 'Montserrat-VariableFont_wght',
    //                       ),
    //   bodyMedium: TextStyle(
    //     fontSize: 16,
    //     fontWeight: FontWeight.w400,
    //     color: Color(0xFF55433D),
    //   ),

    //  titleMedium: TextStyle(
    //                     fontSize: 20.sp,
    //                     fontWeight: FontWeight.w600,
    //                     fontFamily: 'Montserrat-VariableFont_wght',
    //                   ),
    //   bodySmall: TextStyle(fontSize: 14, color: Colors.black),
    //   displaySmall: TextStyle(fontSize: 16),
    //   headlineLarge: TextStyle(
    //     fontSize: 18,
    //     color: Colors.black,
    //     fontFamily: 'Inter-Italic-VariableFont_opsz,wght',
    //   ),
    // ),
    iconTheme: IconThemeData(color: Color(0xFF55433D)),
    primaryIconTheme: IconThemeData(color: Color(0xFF55433D)),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        color: Color(0xFF99462A),
        fontSize: 32.spMin,
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat-VariableFont_wght',
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF242424),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color.fromARGB(255, 71, 63, 63),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        fontFamily: 'Montserrat-VariableFont_wght',
      ),
      titleMedium: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontFamily: 'Montserrat-VariableFont_wght',
      ),
      labelMedium: TextStyle(fontSize: 16, color: Colors.white),
      bodySmall: TextStyle(fontSize: 14, color: Colors.white),
      headlineLarge: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: 'Inter-Italic-VariableFont_opsz,wght',
      ),
    ),

    primaryIconTheme: IconThemeData(color: Colors.white),

    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        color: Color(0xFF99462A),
        fontSize: 32.spMin,
        fontWeight: FontWeight.w700,
        fontFamily: 'Montserrat-VariableFont_wght',
      ),
    ),
  );
}
