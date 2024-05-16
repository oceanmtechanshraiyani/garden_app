import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffF0F4EF),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Color(0xffB5C9AD),
                minRadius: 18,
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width,
            // width: 140,
            child: Image.asset(
              widget.product.image,
              // height: 140,
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
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  '\$' '${widget.product.price}',
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
                )),
              ),
              const CircleAvatar(
                backgroundColor: Color(0xffB5C9AD),
                radius: 12,
                child: Icon(CupertinoIcons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
