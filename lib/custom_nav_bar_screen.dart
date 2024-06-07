import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.w),
          topRight: Radius.circular(35.w),
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff717171),
            blurRadius: 0.1.w,
            spreadRadius: 0.1,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.w),
          topRight: Radius.circular(30.w),
        ),
        child: Container(
          height: 68.h,
          width: 375.w,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  Icons.home,
                  0,
                ),
                _buildNavItem(
                  Icons.favorite,
                  1,
                ),
                SizedBox(width: 10.w),
                _buildNavItem(
                  Icons.shopping_cart,
                  2,
                ),
                _buildNavItem(
                  Icons.person,
                  3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    IconData icon,
    int index,
  ) {
    return InkWell(
      onTap: () => widget.onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: widget.currentIndex == index ? const Color(0xff475E3E) : Colors.grey,
            size: 24.h,
          ),
        ],
      ),
    );
  }
}
