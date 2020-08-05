import 'package:flutter/foundation.dart';
import 'package:odette/models/product.dart';

class CartContent with ChangeNotifier {
  List<Product> _cartItems = new List();
  List<Product> get cartItems => _cartItems;

  void addProduct(Product product) {
    _cartItems.add(product);
    notifyListeners();
  }
}