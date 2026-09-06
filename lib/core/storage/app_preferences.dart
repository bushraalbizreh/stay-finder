import 'package:shared_preferences/shared_preferences.dart';
import 'package:stayfinder/core/constants/app_keys.dart';

class AppPreferences {
  final SharedPreferences sharedPreferences;

  AppPreferences(this.sharedPreferences);
  Future<void> completeOnBoarding() async {
    await sharedPreferences.setBool(AppKeys.isFirstTimeKey, true);
  }

  bool isOnboardingComplete() {
    bool isCompleted =
        sharedPreferences.getBool(AppKeys.isFirstTimeKey) ?? false;
    return isCompleted;
  }
}
