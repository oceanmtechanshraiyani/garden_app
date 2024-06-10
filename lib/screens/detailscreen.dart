import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/provider/cart_provider.dart';
import 'package:garden_app/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final Product product;

  const DetailScreen({
    super.key,
    required this.product,
    required void Function() onLikeToggle,
    required bool isLiked,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int number = 1;
  bool isAddedToCart = false;

  void incrementNumber() {
    setState(() {
      number++;
    });
  }

  void decrementNumber() {
    setState(() {
      if (number > 1) {
        number--;
      }
    });
  }

  void addToCart(CartProvider cartProvider) {
    widget.product.quantity = number; // Set the product quantity
    cartProvider.addItem(widget.product); // Add the product to the cart

    setState(() {
      isAddedToCart = true;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        duration: Duration(milliseconds: 100),
        
        content: Text('Your product is added to the shopping cart.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
    final cartProvider = Provider.of<CartProvider>(context);
    final isLiked = favouriteProvider.isFavourite(widget.product);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(top: 18.0.h, left: 10.0.w),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'assets/backButton.png',
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(
                top: 18.0.h,
                right: 10.w,
              ),
              child: CircleAvatar(
                backgroundColor: const Color(0xffB5C9AD),
                child: IconButton(
                  onPressed: () {
                    favouriteProvider.toggleFavourite(widget.product);
                  },
                  icon: SvgPicture.asset(
                    "assets/bottomnavitems/heart_filled.svg",
                    colorFilter: ColorFilter.mode(
                      isLiked ? Colors.red : Colors.white,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color(0xffF0F4EF),
                  child: Image.asset(
                    widget.product.image,
                    height: MediaQuery.of(context).size.height / 1.7.h,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.7.h,
                    width: MediaQuery.of(context).size.width.w,
                    color: Colors.transparent,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF0F4EF),
                      borderRadius: BorderRadius.circular(30.r),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffB5C9AD),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    widget.product.name,
                                    style: TextStyle(
                                      fontSize: 24.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\$' '${widget.product.price}',
                                    style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w500,
                                      color: const Color(0xff475E3E),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 14.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF0F4EF),
                                        borderRadius: BorderRadius.circular(20.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xff000000),
                                            blurRadius: 0.5.r,
                                            offset: Offset.infinite,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: const Color(0xffB5C9AD),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.remove,
                                              ),
                                              onPressed: decrementNumber,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            '$number',
                                            style: TextStyle(fontSize: 20.sp),
                                          ),
                                          SizedBox(width: 10.w),
                                          CircleAvatar(
                                            backgroundColor: const Color(0xffB5C9AD),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.add,
                                                color: Colors.white,
                                              ),
                                              onPressed: incrementNumber,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/starrate.png',
                                    height: 24.h,
                                    width: 24.w,
                                  ),
                                  SizedBox(width: 5.h),
                                  Text(
                                    "4.9",
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'About Plant',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${widget.product.description} , ${widget.product.description}",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        color: const Color(0xff98A2B3),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 56,
                width: 343,
                child: TextButton(
                  onPressed: () {
                    addToCart(cartProvider);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      const Color(0xff475E3E),
                    ),
                  ),
                  child: Text(
                    isAddedToCart ? 'Go to Cart' : 'Add to Cart',
                    style: const TextStyle(
                      color: Color(0xffF0F4EF),
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
