import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/model/my_product.dart';
import 'package:garden_app/screens/detailscreen.dart';
import 'package:garden_app/screens/notification_screen.dart';
import 'package:garden_app/widgets/product_card.dart';
import 'package:garden_app/widgets/profile_screen.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController t1 = TextEditingController();
  int isSelected = 0;
  int selectedBottomIocnIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     selectedBottomIocnIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 12.h),
            topbar(),
            SizedBox(height: 2.h),
            location(),
            SizedBox(height: 20.h),
            searchbar(),
            SizedBox(height: 20.h),
            categories(),
            SizedBox(height: 10.h),
            cardView(context),
            SizedBox(height: 0.5.h)
          ],
        ),
      ),
    );
  }

  Widget topbar() {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.r,
          child: GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            ),
            child: const Image(
              image: AssetImage("assets/profile.png"),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xff98A2B3),
              ),
            ),
            Text(
              'Jeet',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff344054),
              ),
            ),
          ],
        ),
        const Spacer(),
        GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotificationScreen(),
              )),
          child: CircleAvatar(
            radius: 21.r,
            backgroundColor: const Color(0xffF2F4F7),
            child: Image.asset(
              'assets/notification.png',
              height: 20.h,
            ),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 18.0.h);
  }

  Widget location() {
    return Row(
      children: [
        Icon(
          CupertinoIcons.location_solid,
          color: const Color(0xffD0D5DD),
          size: 14.h,
        ),
        SizedBox(width: 6.0.w),
        Text(
          'Surat, Gujarat',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: const Color(0xffD0D5DD),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0.h);
  }

  Widget searchbar() {
    return Container(
      alignment: Alignment.center,
      width: Get.width.w,
      height: 40.0.h,
      margin: EdgeInsets.symmetric(horizontal: 16.0.h),
      padding: EdgeInsets.symmetric(horizontal: 14.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: const Color(0xffF2F4F7),
      ),
      child: TextField(
        cursorColor: const Color(0xff475E3E),
        controller: t1,
        decoration: InputDecoration(
          suffixIcon: Image.asset("assets/filter.png"),
          suffixIconConstraints: BoxConstraints(maxHeight: 18.0.w),
          hintTextDirection: TextDirection.ltr,
          prefixIcon: Image.asset(
            "assets/search.png",
            height: 35.h,
            width: 33.w,
            alignment: Alignment.topLeft,
          ),
          prefixIconConstraints: BoxConstraints(maxHeight: 24.0.h),
          border: InputBorder.none,
          fillColor: const Color(0xffF2F4F7),
          filled: true,
          hintText: "Search Here",
          isDense: true,
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Color(0xff98A2B3),
          ),
        ),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(
            fontSize: 21.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          height: 42.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10.w),
              _categories(index: 0, name: 'All'),
              SizedBox(width: 10.w),
              _categories(index: 1, name: 'Indoor'),
              SizedBox(width: 10.w),
              _categories(index: 2, name: 'Outdoor'),
              SizedBox(width: 10.w),
              _categories(index: 3, name: 'Cactus'),
              SizedBox(width: 10.w),
            ],
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0.h);
  }

  Widget cardView(BuildContext context) {
    return Expanded(
      child: isSelected == 0
          ? _buildAllProduct()
          : isSelected == 1
              ? _buildallindoorProduct()
              : _buildoutdoorProduct(),
    );
  }

  Widget _categories({required int index, required String name}) {
    return GestureDetector(
      onTap: () => setState(
        () => isSelected = index,
      ),
      child: Container(
        height: 40.h,
        padding: EdgeInsets.symmetric(horizontal: 20.0.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffD0D5DD),
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.circular(29.r),
          color: isSelected == index ? const Color(0xff475E3E) : const Color(0xffFCFCFD),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: isSelected == index ? const Color(0xffFCFCFD) : const Color(0xffD0D5DD),
              fontSize: 18.sp,
              fontWeight: isSelected == index ? FontWeight.bold : FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAllProduct() {
    return GridView.builder(
      padding: EdgeInsets.all(20.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100.w / 160.h),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: Myproducts.allProducts.length,
      itemBuilder: (context, index) {
        final allProducts = Myproducts.allProducts[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(product: allProducts),
            ),
          ),
          child: ProductCard(
            product: allProducts,
          ),
        );
      },
    );
  }

  Widget _buildallindoorProduct() {
    return GridView.builder(
      padding: EdgeInsets.all(20.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100.w / 160.h),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: Myproducts.allindoorproduct.length,
      itemBuilder: (context, index) {
        final allindoorproduct = Myproducts.allindoorproduct[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(product: allindoorproduct),
            ),
          ),
          child: ProductCard(
            product: allindoorproduct,
          ),
        );
      },
    );
  }

  Widget _buildoutdoorProduct() {
    return GridView.builder(
      padding: EdgeInsets.all(20.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100.w / 160.h),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: Myproducts.alloutdoorProducts.length,
      itemBuilder: (context, index) {
        final alloutdoorProducts = Myproducts.alloutdoorProducts[index];
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(product: alloutdoorProducts),
            ),
          ),
          child: ProductCard(
            product: alloutdoorProducts,
          ),
        );
      },
    );
  }
}
