import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // ['name', 'price', 'image', 'color'],
    ['Avocado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Bananas', '2.50', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '15.25', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
  ];
}
