// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stayfinder/datasources/local_data_source/favorite_local_data_source.dart';
import 'package:stayfinder/models/stay_model.dart';

class FavoriteRepo {
  FavoriteLocalDataSource favoriteLocalDataSource;
  FavoriteRepo({required this.favoriteLocalDataSource});

  List<StayModel> getFavoriteStays() {
    return favoriteLocalDataSource.getFavoriteStays();
  }

  Future<void> updateStateFavoriteStay({required StayModel stay}) async {
    await favoriteLocalDataSource.updateStateFavoriteStay(stay: stay);
  }
}
