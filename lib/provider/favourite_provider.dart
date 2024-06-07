import 'package:flutter/material.dart';
import 'package:garden_app/model/models.dart';

class FavouriteItemProvider with ChangeNotifier {
  final List<Product> _selectedItems = [];

  List<Product> get selectedItems => _selectedItems;

  void toggleFavourite(Product product) {
    if (_selectedItems.contains(product)) {
      _selectedItems.remove(product);
      product.islike = false;
    } else {
      _selectedItems.add(product);
      product.islike = true;
    }
    notifyListeners();
  }

  bool isFavourite(Product product) {
    return _selectedItems.contains(product);
  }
}
