import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/provider/cart_provider.dart';
import 'package:provider/provider.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context);
    final List<Product> cartItems = cartProvider.items;

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
          final Product product = cartItems[index];

          return Card(
            child: ListTile(
              leading: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
              title: Text(product.name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('\$${product.price}'),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color(0xffB5C9AD),
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                          ),
                          onPressed: () {
                            cartProvider.decrementItem(product);
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.quantity.toString(),
                          style: TextStyle(fontSize: 20.sp),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffB5C9AD),
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            cartProvider.incrementItem(product);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  cartProvider.removeItem(product);
                },
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Total Price: \$${cartProvider.totalPrice.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
