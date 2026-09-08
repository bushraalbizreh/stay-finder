import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:stayfinder/core/storage/secure_session_storage.dart';
import 'package:stayfinder/datasources/stays_remote_data_source.dart';
import 'package:stayfinder/models/stay_model.dart';


class SearchProvider extends ChangeNotifier {
  List<StayModel> stays = [];
  bool isSearching = false;
  bool noItemFound = false;
  List<StayModel> resultSearch = [];

  StaysRemoteDataSource staysRemoteDataSource = StaysRemoteDataSource(
    secureSessionStorage: SecureSessionStorage(
      secureStorage: FlutterSecureStorage(),
    ),
  );

  Future<List<StayModel>> getStaysList() async {
    stays = (await staysRemoteDataSource.getAllStays())!;
    notifyListeners();
    return stays;
  }

  void getSearchResults(String query) {
    if (query.isEmpty) {
      isSearching = false;
      noItemFound = false;
      notifyListeners();
    } else {
      isSearching = true;
      if (query.isNotEmpty) {
        List<StayModel> listData = [];
        for (var item in stays) {
          String data = item.name!;
          if (data.toLowerCase().contains(query.trim().toLowerCase())) {
            listData.add(item);
          }
        }

        resultSearch.clear();
        resultSearch.addAll(listData);
        notifyListeners();
        return;
      } else {
        resultSearch.clear();
        resultSearch.addAll(stays);
        notifyListeners();
      }
    }
  }
}
