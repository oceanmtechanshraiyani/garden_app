import 'package:flutter/foundation.dart';
import 'package:garden_app/model/cart_model.dart';
import 'package:garden_app/model/models.dart';

class CartProvider with ChangeNotifier {
  List<CartItemtModel> cartItems = [];
  // List<Product> get items => _items;
  final List<Product> _items = [];

  List<Product> get items => _items;

  void addItem(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeItem(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  double get totalPrice {
    // return _items.fold(0, (total, current) => total + current.price);
    // return _items.fold(0, (total, current) => total + (current.price));
    return _items.fold(0, (total, current) => total + (current.price * current.quantity));
  }

  void decrementItem(Product product) {
    if (product.quantity > 1) {
      product.quantity--;
      notifyListeners();
    }
  }

  void incrementItem(Product product) {
    product.quantity++;
    notifyListeners();
  }
}
