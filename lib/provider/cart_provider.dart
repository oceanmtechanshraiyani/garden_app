import 'package:flutter/foundation.dart';
import 'package:garden_app/model/models.dart';

class CartProvider with ChangeNotifier {
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
    return _items.fold(0, (total, current) => total + current.price);
  }
  void decrementItem(Product product) {
    final existingProductIndex = _items.indexWhere((item) => item.id == product.id);
    _items[existingProductIndex].decrementQuantity(); 
    notifyListeners();
  }

  void incrementItem(Product product) {
    final existingProductIndex = _items.indexWhere((item) => item.id == product.id);
    _items[existingProductIndex].incrementQuantity(); 
    notifyListeners();
  }
}
