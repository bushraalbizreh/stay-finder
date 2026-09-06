// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stayfinder/models/profile_model.dart';

import 'package:stayfinder/repos/profile_repo.dart';
import 'package:stayfinder/repos/stays_repo.dart';


class ProfileProvider extends ChangeNotifier {
  ProfileRepo profileRepo;
  ProfileModel profile =ProfileModel();
  String errorMsg = "";
  bool isLoading = false;
  ProfileProvider({
    required this.profileRepo,
   
  });
 

  Future<void> getProfile() async {
    isLoading = true;
    notifyListeners();
     ProfileModel? profileData =await profileRepo.getProfile();
    if (profileData != null) {
      profile = profileData;
      notifyListeners();
    } else {
      errorMsg = "Failed to get Profile data......";
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
  }
}
