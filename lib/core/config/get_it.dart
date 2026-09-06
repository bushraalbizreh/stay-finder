import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;
Future<void> setup() async {
  getIt.registerSingleton<SharedPreferences>(
    await SharedPreferences.getInstance(),
  );
  getIt.registerSingleton<Dio>(Dio());
}
