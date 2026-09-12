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
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Color.fromARGB(255, 248, 114, 61),
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 0),
    textTheme: TextTheme(displaySmall: TextStyle(color: Colors.blueGrey)),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      filled: true,
    ),
  );
}
