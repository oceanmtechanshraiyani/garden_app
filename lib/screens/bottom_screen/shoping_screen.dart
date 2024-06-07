import 'package:flutter/material.dart';
import 'package:garden_app/model/models.dart';

class ShopingScreen extends StatefulWidget {
  const ShopingScreen({super.key});

  @override
  State<ShopingScreen> createState() => _ShopingScreenState();
}

class _ShopingScreenState extends State<ShopingScreen> {
  
  List<Product> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false,
        title: const Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cartItems[index].name),
            subtitle: Text('\$${cartItems[index].price}'),
          );
        },
      ),
    );
  }
}
