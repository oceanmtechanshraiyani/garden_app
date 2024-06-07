import 'package:flutter/material.dart';
import 'package:garden_app/model/my_product.dart';

class Product {
  final int id;
  final String name;
  final int category;
  final String image;
  final String image1;
  final String description;
  final double price;
  int quantity;
  final Widget icon;
  bool islike;
  bool isSelected;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.image1,
    required this.description,
    required this.price,
    required this.quantity,
    required this.icon,
    required this.islike,
    required this.isSelected,
  });

  void toggleLike() {
    islike = !islike;
  }

  static List<Product> getlikePlants() {
    List<Product> travelList = Myproducts.allProducts;
    return travelList.where((element) => element.islike == true).toList();
  }

  // Get the cart items
  static List<Product> addedToCartPlants() {
    List<Product> selectedPlants = Myproducts.allProducts;
    return selectedPlants.where((element) => element.isSelected == true).toList();
  }
   void incrementQuantity() {
    quantity++;
  }

  void decrementQuantity() {
    if (quantity > 1) {
      quantity--;
    }
  }
}
