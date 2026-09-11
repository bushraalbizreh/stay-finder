import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stayfinder/datasources/local_data_source/cart_local_data_source.dart';
import 'package:stayfinder/datasources/local_data_source/favorite_local_data_source.dart';
import 'package:stayfinder/models/available_room_model.dart';
import 'package:stayfinder/models/location_model.dart';
import 'package:stayfinder/models/review_model.dart';
import 'package:stayfinder/repos/cart_repo.dart';
import 'package:stayfinder/repos/favorite_repo.dart';
import '../providers/favorite_provider.dart';
import '../core/constants/app_keys.dart';
import '../models/stay_model.dart';
import '../providers/cart_provider.dart';
import '../providers/stay_provider.dart';
import '../core/providers/theme_provider.dart';
import '../core/storage/app_preferences.dart';
import '../core/storage/secure_session_storage.dart';
import '../core/theme/app_theme.dart';
import 'datasources/remote_data_source/auth_remote_data_source.dart';
import '../core/providers/app_provider.dart';
import 'datasources/remote_data_source/stays_remote_data_source.dart';
import '../repos/auth_repo.dart';
import '../repos/stays_repo.dart';
import 'core/config/get_it.dart';
import 'pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(LocationAdapter());
  Hive.registerAdapter(AvailableRoomAdapter());
  Hive.registerAdapter(ReviewAdapter());
  Hive.registerAdapter(StayModelAdapter());
  await setup();

  Box<StayModel> cartBox = await Hive.openBox<StayModel>(AppKeys.cartBox);
  Box<StayModel> favoriteBox = await Hive.openBox<StayModel>(AppKeys.favoriteBox);
  runApp(MyApp(cartBox: cartBox, favoriteBox: favoriteBox));
}

class MyApp extends StatelessWidget {
  final Box<StayModel> favoriteBox;
  final Box<StayModel> cartBox;
  const MyApp({super.key, required this.cartBox, required this.favoriteBox});

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
          ),
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

ChangeNotifierProvider(create: (context) => CartProvider(cartRepo: CartRepo(cartLocalDataSource: CartLocalDataSource(cartBox: cartBox)))..getAllItemsInCart(),),
        // ChangeNotifierProvider(
        //   create: (context) =>
        //       CartProvider(cartBoxProvider: cartBox)..getAllItemsInCart(),
        // ),

        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(
            favoriteRepo: FavoriteRepo(
              favoriteLocalDataSource: FavoriteLocalDataSource(
                favoriteBox: favoriteBox,
              ),
            ),
          )..getFavoriteStays(),
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
