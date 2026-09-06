import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stayfinder/providers/stay_provider.dart';
import 'package:stayfinder/core/providers/theme_provider.dart';
import 'package:stayfinder/core/storage/app_preferences.dart';
import 'package:stayfinder/core/storage/secure_session_storage.dart';
import 'package:stayfinder/core/theme/app_theme.dart';
import 'package:stayfinder/datasources/auth_remote_data_source.dart';
import 'package:stayfinder/core/providers/app_provider.dart';
import 'package:stayfinder/datasources/stays_remote_data_source.dart';
import 'package:stayfinder/repos/auth_repo.dart';
import 'package:stayfinder/repos/stays_repo.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider()..loadTheme(),
        ),
        ChangeNotifierProvider(
          create: (context) => AppProvider(
            authRepo: AuthRepo(
              authRemoteDataSource: AuthRemoteDataSource(
                secureSessionStorage: SecureSessionStorage(
                  secureStorage: FlutterSecureStorage(),
                ),
                appPreferences: AppPreferences(getIt.get<SharedPreferences>()),
              ),
            ),
          )..init(),
        ),
        ChangeNotifierProvider(
          create: (context) => StayProvider(
            staysRepo: StaysRepo(
              staysRemoteDataSource: StaysRemoteDataSource(
                secureSessionStorage: SecureSessionStorage(
                  secureStorage: FlutterSecureStorage(),
                ),
              ),
            ),
          )..getAllStays(),
        ),
      ],
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
