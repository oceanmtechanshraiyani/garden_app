import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garden_app/model/my_product.dart';
import 'package:garden_app/screens/detailscreen.dart';
import 'package:garden_app/widgets/product_card.dart';
import 'package:get/get.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  TextEditingController t1 = TextEditingController();
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Gap(12),
            topbar(),
            const Gap(2),
            location(),
            const SizedBox(height: 20),
            searchbar(),
            const SizedBox(height: 20),
            categories(),
            const SizedBox(height: 10),
            cardView(context),
            Container(
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xffFFFFFF),
                  border: Border.all(color: const Color(0xff717171), width: 0.1)),
              child: const Column(
                children: [
                  Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        backgroundColor: Color(0xffD0D5DD),
                        child: Icon(
                          CupertinoIcons.home,
                          color: Color(0xff475E3E),
                          size: 26,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.heart_fill,
                        color: Color(0xffD0D5DD),
                        size: 26,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.shopping_cart,
                        color: Color(0xffD0D5DD),
                        size: 26,
                      ),
                      Icon(
                        CupertinoIcons.profile_circled,
                        color: Color(0xffD0D5DD),
                        size: 26,
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Gap(0.5)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {},
          backgroundColor: const Color(0xff475E3E),
          child: const Icon(CupertinoIcons.qrcode_viewfinder, color: Colors.white),
        ),
      ),
    );
  }

  Widget topbar() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage("assets/profile.png"),
        ),
        const Gap(14),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff98A2B3),
              ),
            ),
            Text(
              'Jeet',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff344054),
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffF2F4F7),
          child: Image.asset(
            'assets/notification.png',
            height: 20,
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget location() {
    return const Row(
      children: [
        Icon(
          CupertinoIcons.location_solid,
          color: Color(0xffD0D5DD),
          size: 14,
        ),
        Gap(6.0),
        Text(
          'Surat, Gujarat',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xffD0D5DD),
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
  }

  Widget searchbar() {
    return Container(
      width: Get.width,
      height: 40.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xffF2F4F7),
      ),
      child: TextField(
        controller: t1,
        decoration: InputDecoration(
            suffixIcon: Image.asset("assets/filter.png"),
            suffixIconConstraints: const BoxConstraints(maxHeight: 20.0),
            hintTextDirection: TextDirection.ltr,
            prefixIcon: Image.asset("assets/search.png", height: 35, width: 33, alignment: Alignment.topLeft),
            prefixIconConstraints: const BoxConstraints(maxHeight: 24.0),
            border: InputBorder.none,
            fillColor: const Color(0xffF2F4F7),
            filled: true,
            hintText: "Search Here",
            isDense: true,
            hintStyle: const TextStyle(fontSize: 14, color: Color(0xff98A2B3))),
      ),
    );
  }

  Widget categories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(15),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _categories(index: 0, name: 'All'),
              const Gap(10),
              _categories(index: 1, name: 'Indoor'),
              const Gap(10),
              _categories(index: 2, name: 'Outdoor'),
              const Gap(10),
              _categories(index: 3, name: 'Cactus'),
              const Gap(10),
            ],
          ),
        ),
      ],
    ).marginSymmetric(horizontal: 20.0);
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

  _categories({required int index, required String name}) {
    return GestureDetector(
      onTap: () => setState(
        () => isSelected = index,
      ),
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffD0D5DD), width: 1.5),
          borderRadius: BorderRadius.circular(29),
          color: isSelected == index ? const Color(0xff475E3E) : const Color(0xffFCFCFD),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
                color: isSelected == index ? const Color(0xffFCFCFD) : const Color(0xffD0D5DD),
                fontSize: 18,
                fontWeight: isSelected == index ? FontWeight.bold : FontWeight.w600),
          ),
        ),
      ),
    );
  }

  _buildAllProduct() {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 160),
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
              )),
          child: ProductCard(
            product: allProducts,
          ),
        );
      },
    );
  }

  _buildallindoorProduct() {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 160),
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
              )),
          child: ProductCard(
            product: allindoorproduct,
          ),
        );
      },
    );
  }

  _buildoutdoorProduct() {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (100 / 160),
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
              )),
          child: ProductCard(
            product: alloutdoorProducts,
          ),
        );
      },
    );
  }
}
