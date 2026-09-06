// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stayfinder/datasources/auth_remote_data_source.dart';
import 'package:stayfinder/models/login_model.dart';

import '../core/models/user_session.dart';

class AuthRepo {
  AuthRemoteDataSource authRemoteDataSource;
  AuthRepo({required this.authRemoteDataSource});

  Future<bool> login({required LoginModel loginModel}) {
    return authRemoteDataSource.login(loginModel: loginModel);
  }

  Future<bool> logout() async {
   return await authRemoteDataSource.logout();
  }

  bool isOnboardingComplete() {
    return authRemoteDataSource.appPreferences.isOnboardingComplete();
  }

  Future<void> completeOnboarding() {
    return authRemoteDataSource.appPreferences.completeOnBoarding();
  }

  Future<bool> restoreSession() async {
    UserSession? userSession = await authRemoteDataSource.secureSessionStorage
        .getSession();
    return userSession != null ? true : false;
  }
}
