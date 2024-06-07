import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/provider/favourite_provider.dart';
import 'package:garden_app/screens/detailscreen.dart';
import 'package:garden_app/widgets/product_card.dart';
import 'package:provider/provider.dart';

class LikeScreen extends StatelessWidget {
  const LikeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
    final favoritePlants = favouriteProvider.selectedItems;

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
                final product = favoritePlants[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        product: product, onLikeToggle: () {  }, isLiked: product.islike
                        ,
                      ),
                    ),
                  ),
                  child: ProductCard(
                    product: product, onLikeToggle: () {  }, isLiked: product.islike,
                  ),
                );
              },
            ),
    );
  }
}
