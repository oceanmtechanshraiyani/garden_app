import 'package:flutter/material.dart';

class CategoryModel {
  final int index;
  final String name;

  CategoryModel({
    required this.index,
    required this.name,
  });
}



class Product {
  final int id;
  final String name;
  final int category;
  final String image;
  final String image1;
  final String description;
  final double price;
  final int quantity;
  final Widget icon;

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
  });
}
