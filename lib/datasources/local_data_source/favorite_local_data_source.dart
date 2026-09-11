

import 'package:hive_flutter/hive_flutter.dart';
import '../../models/stay_model.dart';

class FavoriteLocalDataSource {
  final Box<StayModel> favoriteBox;
  List<StayModel> favoriteStays = [];

  FavoriteLocalDataSource({required this.favoriteBox});

  List<StayModel> getFavoriteStays() {
    favoriteStays = favoriteBox.values.toList();
    return favoriteStays;
  }

Future<void> updateStateFavoriteStay({required StayModel stay}) async {
    if (favoriteBox.containsKey(stay.id)) {
      await favoriteBox.delete(stay.id);
    } else {
      favoriteBox.put(stay.id, stay);
    }

  } 


   
  }




  






/* Future<void> updateStateFavoriteStay({required StayModel stay}) async {
    // if (favoriteBox.containsKey(stay.id)) {
    //   await favoriteBox.delete(stay.id);
    // } else {
    //   favoriteBox.put(stay.id, stay);
    // }

  } */