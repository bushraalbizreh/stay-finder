// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:stayfinder/repos/cart_repo.dart';
import '../models/stay_model.dart';

class CartProvider extends ChangeNotifier {
  CartRepo cartRepo;
  String message = "";
  bool isItemExist = false;
  double totalPrice = 0.0;
  List<StayModel> itemsCart = [];
  CartProvider({required this.cartRepo});

  void getAllItemsInCart() {
    itemsCart = cartRepo.getAllStaysInCart();
    notifyListeners();
    print(
      "carts: ${cartRepo.getAllStaysInCart()} , totalPrice  : $totalPrice",
    );
  }

  void addToCart({required StayModel itemCart}) async {
    isItemExist = cartRepo.isItemExistInCart(item: itemCart);
    notifyListeners();
    if (isItemExist) {
      // message = "This item is already in the cart";
      notifyListeners();
    } else if (isItemExist == false) {
      await cartRepo.addToCart(itemCart: itemCart);
      totalPrice += itemCart.price!;
      message = "Added to cart successfully";
      notifyListeners();
    } else {
      message = "Adding to cart failed";

      notifyListeners();
    }

    getAllItemsInCart();
    notifyListeners();
  }

  void removeFromCart({required StayModel cartItemRemoved}) async {
    await cartRepo.removeFromCart(itemCart: cartItemRemoved);
    if (totalPrice > 0) {
      totalPrice -= cartItemRemoved.price!;
     // message = "removed from the cart Successfully";
      
    }
    getAllItemsInCart();
    notifyListeners();
  }

  double getTotalPrice() {
    totalPrice = 0.0;
    for (StayModel stay in itemsCart) {
      totalPrice = totalPrice + stay.price!;
    }
    return totalPrice;
  }

  bool isItemInCart({required StayModel stay}) {
    isItemExist = cartRepo.cartLocalDataSource.isItemExistInCart(
      itemCart: stay,
    );
    return isItemExist;
  }
}
