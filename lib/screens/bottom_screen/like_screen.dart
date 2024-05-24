import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garden_app/model/models.dart';

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
      body: widget.likedPlant.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100.h,
                    child: SvgPicture.asset(
                      "assets/bottomnavitems/Heart.svg",
                      height: 100.h,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Your Favourite Plant",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                    ),
                  )
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: ListView.builder(
                itemCount: widget.likedPlant.length,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            ),
    );
  }
}
