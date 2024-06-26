import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:garden_app/model/models.dart';
import 'package:garden_app/model/my_product.dart';
import 'package:garden_app/screens/detailscreen.dart';
import 'package:garden_app/screens/global.dart';
import 'package:garden_app/screens/notification_screen.dart';
import 'package:garden_app/screens/profile_home_screen.dart';
import 'package:garden_app/widgets/product_card.dart';
// import 'package:get/get.dart';

List<Product> displayGrid = Myproducts.allProducts;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController t1 = TextEditingController();
  List<bool> isIconClickedList = List.generate(
    Myproducts.allProducts.length,
    (index) => false,
  );
  int isSelected = 0;
  bool _showClearButton = false;

  void updateGrid(String value) {
    if (value.isEmpty) {
      _showClearButton = false;
    } else {
      _showClearButton = true;
    }

    setState(
      () {
        if (isSelected == 0) {
          displayGrid = Myproducts.allProducts
              .where((element) => element.name.toLowerCase().contains(value.toLowerCase()))
              .toList();
        } else {
          displayGrid = Myproducts.allProducts
              .where((element) =>
                  element.name.toLowerCase().contains(value.toLowerCase()) && element.category == isSelected)
              .toList();
        }
      },
    );
  }

  @override
  void dispose() {
    t1.dispose();
    super.dispose();
  }

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
            Expanded(child: cardView(context)),
            SizedBox(height: 0.5.h)
          ],
        ),
      ),
    );
  }

  Widget topbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22.r,
            child: GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileHomeScreen(),
                ),
              ),
              child: const Image(
                image: AssetImage(
                  "assets/profile.png",
                ),
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
              ),
            ),
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
      ),
    );
  }

  Widget location() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
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
      ),
    );
  }

  Widget searchbar() {
    return Container(
      alignment: Alignment.center,
      // width: Get.width.w,
      height: 40.0.h,
      margin: EdgeInsets.symmetric(horizontal: 16.0.h),
      padding: EdgeInsets.symmetric(horizontal: 14.0.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: const Color.fromRGBO(242, 244, 247, 1),
      ),
      child: TextField(
        controller: t1,
        textAlign: TextAlign.start,
        onChanged: (value) => updateGrid(value),
        cursorColor: const Color(0xff475E3E),
        autofocus: false,
        autocorrect: false,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: _showClearButton
              ? InkWell(
                  onTap: () => setState(() {
                    t1.clear();
                    updateGrid('');
                  }),
                  child: SvgPicture.asset(
                    "assets/CloseCircle.svg",
                  ),
                )
              : Image.asset(
                  "assets/filter.png",
                ),
          suffixIconConstraints: BoxConstraints(
            maxHeight: 28.0.w,
            maxWidth: 18.0.w,
            minHeight: 18.w,
            minWidth: 18.w,
          ),
          hintTextDirection: TextDirection.ltr,
          prefixIcon: Image.asset(
            "assets/search.png",
            height: 35.h,
            width: 33.w,
            alignment: Alignment.topLeft,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 24.0.h,
          ),
          border: InputBorder.none,
          fillColor: const Color(0xffF2F4F7),
          filled: true,
          hintText: "Search Here",
          isDense: true,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            color: const Color(0xff98A2B3),
          ),
        ),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Text(
            "Category",
            style: TextStyle(
              fontSize: 21.sp,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 15.h),
        SizedBox(
          height: 42.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Myproducts.categoryList.length,
            itemBuilder: (context, index) {
              final categoryList = Myproducts.categoryList[index];
              return categoriesdata(
                index: index,
                name: categoryList.name,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget categoriesdata({
    required int index,
    required String name,
  }) {
    return GestureDetector(
      onTap: () => setState(
        () {
          isSelected = index;
          updateGrid(t1.text);
        },
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.w),
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
          ),
          SizedBox(width: 10.w)
        ],
      ),
    );
  }

  Widget cardView(
    BuildContext context,
  ) {
    return GridView.builder(
      padding: EdgeInsets.all(20.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100.w / 160.h),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      scrollDirection: Axis.vertical,
      itemCount: displayGrid.length,
      itemBuilder: (context, index) {
        Product product = displayGrid[index];
        // final isLiked = favoritePlants.contains(allProducts);
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: product,
                onLikeToggle: () => setState(() {}),
                isLiked: product.islike,
              ),
            ),
          ),
          child: ProductCard(
            product: product,
            onLikeToggle: () => setState(
              () {
                displayGrid[index].islike = (!displayGrid[index].islike);
                if (!favoritePlants.contains(product)) {
                  favoritePlants.add(product);
                } else {
                  favoritePlants.remove(product);
                }
              },
            ),
            isLiked: product.islike,
          ),
        );
      },
    );
  }


}
