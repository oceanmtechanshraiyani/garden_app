import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/Qr_Screen.dart';
import 'package:garden_app/custom_nav_bar_screen.dart';
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
