import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:stayfinder/core/providers/theme_provider.dart';
import 'package:stayfinder/core/theme/app_theme.dart';
import 'package:stayfinder/pages/cart_screen.dart';
import 'package:stayfinder/pages/details_screen.dart';
import 'package:stayfinder/pages/favorite_screen.dart';
import 'package:stayfinder/pages/home_screen.dart';
import 'package:stayfinder/pages/login_screen.dart';
import 'package:stayfinder/pages/profile_screen.dart';
import 'package:stayfinder/pages/search_screen.dart';

import 'core/config/get_it.dart';
import 'pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider()..loadTheme(),
      child: Builder(
        builder: (context) {
          return ScreenUtilInit(
            designSize: const Size(390, 902),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return Consumer<ThemeProvider>(
                builder: (context, theme, _) => MaterialApp(
                  theme: AppTheme.lightTheme,
                  darkTheme: AppTheme.darkTheme,
                  debugShowCheckedModeBanner: false,
                  themeMode: theme.isDarkTheme
                      ? ThemeMode.dark
                      : ThemeMode.light,
                  home: Splash(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
