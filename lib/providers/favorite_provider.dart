// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:stayfinder/models/stay_model.dart';
import 'package:stayfinder/repos/favorite_repo.dart';

class FavoriteProvider extends ChangeNotifier {
  // final Box<StayModel> favoriteBox;
  // String favoriteMsg = "";
  bool isStateNowFavorite = false;
  List<StayModel> favoriteStays = [];
  FavoriteRepo favoriteRepo;
  FavoriteProvider({required this.favoriteRepo});

  void getFavoriteStays() {
 favoriteStays = favoriteRepo.getFavoriteStays();
    notifyListeners();
    print("favotite: ${favoriteRepo.getFavoriteStays()}");
  }

  Future<void> updateStateFavoriteStay({required StayModel stay}) async {
    await favoriteRepo.updateStateFavoriteStay(stay: stay);

    bool isStateNowFavorite = favoriteStays.any((element) {
      return element.id == stay.id;
    });

    if (isStateNowFavorite) {
      favoriteStays = favoriteStays.where((element) {
        return element.id != stay.id;
      }).toList();
    } else {
      favoriteStays = [...favoriteStays, stay];
    }
    getFavoriteStays();
    notifyListeners();
  }

  bool isStayFavorite(StayModel stay) {

    return favoriteStays.any((element) {
      return element.id == stay.id;
    });
    
  }

  // List<StayModel> getFavoriteStays() {
  //   favoriteStays = favoriteBox.values.toList();
  //   return favoriteStays;
  // }

  // Future<void> updateStateCartFavorite({required StayModel stayUpdated}) async {
  //   List<StayModel> favoriteStays = favoriteBox.values.toList();

  //   if (favoriteBox.containsKey(stayUpdated.id)) {
  //     await favoriteBox.delete(stayUpdated.id);
  //     favoriteMsg = "Remove this Stay from Favorite";
  //   } else {
  //     favoriteBox.put(stayUpdated.id, stayUpdated);
  //      favoriteMsg = "Added this Stay to Favorite";
  //   }

  //   bool isCurrentlyFavorite = favoriteStays.any((element) {
  //     return element.id == stayUpdated.id;
  //   });

  //   if (isCurrentlyFavorite) {
  //     favoriteStays = favoriteStays.where((element) {
  //       return element.id != stayUpdated.id;
  //     }).toList();
  //   } else {
  //     favoriteStays = [...favoriteStays, stayUpdated];
  //     // favoriteProducts.add(product);
  //   }
  //   notifyListeners();
  // }

  // bool isStayFavorite(StayModel stayUpdated) {
  //   return favoriteStays.any((element) {
  //     return element.id == stayUpdated.id;
  //   });
  // }
}
