import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/bottom_bar_screen.dart';
import 'package:get/route_manager.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          splashImage(),
          SizedBox(height: 10.h),
          title(),
          SizedBox(height: 14.h),
          mybutton(),
        ],
      ),
    );
  }

  Widget splashImage() {
    return ShapeOfView(
      shape: ArcShape(
        direction: ArcDirection.Outside,
        height: 40.h,
        position: ArcPosition.Bottom,
      ),
      elevation: 0,
      child: Container(
        height: Get.height / 1.4,
        width: Get.width,
        decoration: const BoxDecoration(
          color: Color(0xffF0F4EF),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 00,
              offset: Offset.infinite,
            ),
          ],
        ),
        child: Image.asset(
          'assets/splash.png',
        ),
      ),
    );
  }

  Widget title() {
    return Text(
      "Create Your \n Own Garden!",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 35.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget mybutton() {
    return GestureDetector(
      onTap: () {
        Get.to(const BottomNavBarScreen());
      },
      child: Container(
        height: 52.w,
        padding: EdgeInsets.symmetric(
          horizontal: 32.0.h,
        ),
        decoration: BoxDecoration(
          color: const Color(0xff475E3E),
          borderRadius: BorderRadius.circular(42.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Let’s Start",
              style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10.w),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 0.8.w,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                CupertinoIcons.chevron_forward,
                color: Colors.white,
                size: 14.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
