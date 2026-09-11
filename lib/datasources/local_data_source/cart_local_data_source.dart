import 'package:hive_flutter/hive_flutter.dart';

import '../../models/stay_model.dart';

class CartLocalDataSource {
  Box<StayModel> cartBox;
  bool isAdded = false;
  bool isItemExist = false;
  double totalPrice = 0.0;
  List<StayModel> itemsCartList = [];
  CartLocalDataSource({required this.cartBox});

  List<StayModel> getAllStaysInCart() {
    itemsCartList = cartBox.values.toList();
    return itemsCartList;
  }

  Future<void> addToCart({required StayModel itemCart}) async {
    isItemExist = isItemExistInCart(itemCart: itemCart);
    print("in local data cart the item is : ${isItemExist}");
    if (!isItemExist) {
      await cartBox.put(itemCart.id, itemCart);

      isAdded = true;
    }
  }

  bool isItemExistInCart({required StayModel itemCart}) {
    final existingItemIndex = cartBox.values.toList().indexWhere(
      (item) => item.id == itemCart.id,
    );
    if (existingItemIndex != -1) {
      final existingItem = cartBox.getAt(existingItemIndex);
      existingItem!.copyWith();

      if (itemsCartList.contains(existingItem)) {
        return true;
      }
    }
    return false;
  }

  Future<void> removeFromCart({required StayModel itemCart}) async {
    await cartBox.delete(itemCart.id);
  }
}
