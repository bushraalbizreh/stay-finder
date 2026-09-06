import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../constants/app_keys.dart';
import '../models/user_session.dart';

class SecureSessionStorage {
  final FlutterSecureStorage secureStorage;

  SecureSessionStorage({required this.secureStorage});

  Future<void> saveSession({required UserSession userSession}) async {
    await secureStorage.write(
      key: AppKeys.accessTokenKey,
      value: userSession.accessToken,
    );
  }

  Future<UserSession?> getSession() async {
    String? accessToken = await secureStorage.read(key: AppKeys.accessTokenKey);
    if (accessToken != null) {
      UserSession userSession = UserSession(accessToken: accessToken);
      return userSession;
    }
    return null;
  }

  Future<void> clearSession() async {
    await secureStorage.delete(key: AppKeys.accessTokenKey);
  }

  Future<bool> hasToken() async {
    String? accessToken = await secureStorage.read(key: AppKeys.accessTokenKey);
    if (accessToken != null) {
      return true;
    } else {
      return false;
    }
  }
}
