import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/Qr_Screen.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/screens/bottom_screen/like_screen.dart';
import 'package:garden_app/screens/bottom_screen/shoping_screen.dart';
import 'package:garden_app/screens/dashboard_screen.dart';
import 'package:garden_app/widgets/profile_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Product> likes = [];

  int currentTabIndex = 0;

  List<Widget> widetOption() {
    return [
      const DashboardScreen(),
      LikeScreen(
        likedPlant: likes,
      ),
      const ShopingScreen(),
      const ProfileScreen(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool showQrButton = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible: !showQrButton,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(180.w),
          ),
          backgroundColor: const Color(0xff475E3E),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const QrScreen(),
            ),
          ),
          child: const Icon(
            Icons.qr_code_scanner_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: IndexedStack(
        index: currentTabIndex,
        children: widetOption(),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentTabIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onItemTapped,
  });

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
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentIndex == index ? const Color(0xff475E3E) : Colors.grey,
            size: 24.h,
          ),
        ],
      ),
    );
  }
}
