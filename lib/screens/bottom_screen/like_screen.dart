import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/screens/dashboard_screen.dart';
import 'package:garden_app/screens/detailscreen.dart';
import 'package:garden_app/screens/global.dart';
import 'package:garden_app/widgets/product_card.dart';

class LikeScreen extends StatefulWidget {
  const LikeScreen({super.key, required List<Product> likedPlant});

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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          'Favorite Plants',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: favoritePlants.isEmpty
          ? Center(
              child: Text(
                'No favorite plants yet!',
                style: TextStyle(
                  fontSize: 18.sp,
                  color: Colors.grey,
                ),
              ),
            )
          : GridView.builder(
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
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(product: allProducts),
                    ),
                  ),
                  child: ProductCard(
                    product: allProducts,
                    onLikeToggle: () {
                      setState(() {
                        List<Product> templist = displayGrid.where((element) => element == allProducts).toList();
                        print(templist.first.id);

                        if (templist.isNotEmpty) {
                          templist.first.islike = false;
                        }

                        int productIndex = displayGrid.indexWhere(
                          (element) {
                            print(element.id);
                            return element.id == templist.first.id;
                          },
                        );
                        print(productIndex);
                        if (productIndex != -0) {
                          displayGrid[productIndex].islike = false;
                        }

                        if (favoritePlants.contains(allProducts)) {
                          favoritePlants.remove(allProducts);
                        }
                      });
                    },
                    isLiked: favoritePlants.contains(allProducts),
                  ),
                );
              },
            ),
    );
  }
}
