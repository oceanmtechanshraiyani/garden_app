import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/model/models.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool like = false;

  void toggleLike() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.w,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: const Color(0xffF0F4EF),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: toggleLike,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  minRadius: 18.r,
                  child: Icon(
                    like ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width, 
            child: Image.asset(
              widget.product.image,
              height: 140.h,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: Text(
                  widget.product.name,
                  style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ],
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
                  '\$' '${widget.product.price}',
                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500, color: Colors.black),
                )),
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
