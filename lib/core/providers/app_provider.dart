// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import '../../models/login_model.dart';
import '../../repos/auth_repo.dart';

class AppProvider extends ChangeNotifier {
  AuthRepo authRepo;
  bool isLoading = false;
  String? errorMessage = '';
  bool isAuthenticated = false;
  bool isCompleteOnBoarding = false;
  bool isLogged = false;

  AppProvider({required this.authRepo});

  Future<void> init() async {
    isCompleteOnBoarding = authRepo.isOnboardingComplete();
    isAuthenticated = await authRepo.restoreSession();

    notifyListeners();
  }

  Future<bool> login({required LoginModel loginModel}) async {
    try {
      TextEditingController email = TextEditingController();
      TextEditingController password = TextEditingController();
      isLoading = true;
      notifyListeners();

      isLogged = await authRepo.login(
        loginModel: LoginModel(
          email: email.text.trim(),
          password: password.text,
        ),
      );
      notifyListeners();
      if (isLogged) {
        //  isAuthenticated = true;

       // notifyListeners();
      } else {
        //   isAuthenticated = false;
        errorMessage = "Login Failed";
        notifyListeners();
      }
      return isLogged;
    } catch (e) {
      isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<bool> logout() async {
    isLoading = true;
    bool isLogout = await authRepo.logout();
    if (isLogout) {
      //   isAuthenticated = false;
      notifyListeners();
    } else {
      ///   isAuthenticated = true;
      errorMessage = "Logout Failed";
      notifyListeners();
    }
    return isLogout;
  }

  Future<void>completeOnBoarding() async {
    await authRepo.completeOnboarding();
    notifyListeners();
  }
}
