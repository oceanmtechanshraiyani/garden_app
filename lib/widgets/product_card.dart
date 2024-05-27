import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:garden_app/model/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onLikeToggle;
  final bool isLiked;

  const ProductCard({
    super.key,
    required this.product,
    required this.onLikeToggle,
    required this.isLiked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w, // Adjust width to be responsive
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color(0xffF0F4EF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, // Make the column stretch to fit the container width
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: onLikeToggle,
                child: isLiked
                    ? SvgPicture.asset("assets/bottomnavitems/heart_filled.svg")
                    : SvgPicture.asset("assets/bottomnavitems/heart_outline.svg"),
              ),
            ],
          ),
          SizedBox(
            height: 140.h, // Adjust height to be responsive
            child: Image.asset(
              product.image,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 9.h),
            child: Text(
              product.name,
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Center(
                  child: Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: const Color(0xffB5C9AD),
                radius: 12.r,
                child: const Icon(CupertinoIcons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
