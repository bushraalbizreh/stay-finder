// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:stayfinder/repos/stays_repo.dart';

import '../models/stay_model.dart';

class StayProvider extends ChangeNotifier {
  StaysRepo staysRepo;
  List<StayModel> stays = [];
  String errorMsg = "";
  bool isLoading = false;
  StayProvider({
    required this.staysRepo,
  });

  Future<void> getAllStays() async {
    isLoading = true;
    notifyListeners();
    List<StayModel>? staysData = await staysRepo.getAllStays();
    if (staysData != null) {
      stays = staysData;
      notifyListeners();
    } else {
      errorMsg = "Failed to get stays data.................. ";
      notifyListeners();
    }
    isLoading = false;
    notifyListeners();
  }
}
