import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/screens/global.dart';
import 'package:garden_app/widgets/product_card.dart';

class LikeScreen extends StatefulWidget {
  final List<Product> likedPlant;
  const LikeScreen({super.key, required this.likedPlant});

  @override
  State<LikeScreen> createState() => _LikeScreenState();
}

class _LikeScreenState extends State<LikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Like Screen'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (100.w / 160.h),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: favoritePlants.length,
        itemBuilder: (context, index) {
          final allProducts = favoritePlants[index];
          return ProductCard(
            product: allProducts,
          );
        },
      ),
    );
  }
}
