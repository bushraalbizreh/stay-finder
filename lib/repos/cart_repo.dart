// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:stayfinder/datasources/local_data_source/cart_local_data_source.dart';
import 'package:stayfinder/models/stay_model.dart';

class CartRepo {
  CartLocalDataSource cartLocalDataSource;
  CartRepo({required this.cartLocalDataSource});

  List<StayModel> getAllStaysInCart() {
    return cartLocalDataSource.getAllStaysInCart();
  }

  Future<void> addToCart({required StayModel itemCart}) async {
    await cartLocalDataSource.addToCart(itemCart: itemCart);
  }

  Future<void> removeFromCart({required StayModel itemCart}) async {
    await cartLocalDataSource.removeFromCart(itemCart: itemCart);
  }

  bool isItemExistInCart({required StayModel item}) {
    return cartLocalDataSource.isItemExistInCart(itemCart: item);
  }
}
