import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // ['itemName', 'itemPrice', 'imagePath', 'color'],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Bananas', '2.50', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '15.25', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Bananas', '2.50', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '15.25', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Bananas', '2.50', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '15.25', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
  ];

  List _cartItems = [];

  get shopItems => _shopItems;

  get cartItems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotalPrice() {
    double totalPrice = 0;
    for (var i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
