import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:garden_app/model/models.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int number = 0;

  void incrementnumber() {
    setState(() {
      number++;
    });
  }

  void decrementnumber() {
    setState(() {
      if (number >= 1) {
        number--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(top: 18.0, left: 10.0),
            child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  'assets/backButton.png',
                )),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 18.0, right: 10),
              child: Image.asset('assets/like.png'),
            )
          ],
        ),
        body: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: const Color(0xffF0F4EF),
                  child: Image.asset(
                    widget.product.image,
                    height: 516,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 1.7,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffF0F4EF),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffB5C9AD),
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    child: Card(
                      margin: const EdgeInsets.all(0),
                      color: Colors.white,
                      elevation: 0,
                      shadowColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    widget.product.name,
                                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '\$' '${widget.product.price}',
                                    style: const TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w500, color: Color(0xff475E3E)),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 14.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF0F4EF),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Color(0xff000000),

                                            blurRadius: 0.5,
                                            offset: Offset.infinite,
                                            // spreadRadius: 1,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: const Color(0xffB5C9AD),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.remove,
                                              ),
                                              onPressed: decrementnumber,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '$number',
                                            style: const TextStyle(fontSize: 20),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: const Color(0xffB5C9AD),
                                            child: IconButton(
                                              icon: const Icon(Icons.add, color: Colors.white),
                                              onPressed: incrementnumber,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/starrate.png',
                                    height: 24,
                                    width: 24,
                                  ),
                                  const Gap(5),
                                  const Text(
                                    "4.9",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Gap(8),
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    'About Plant',
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // const Gap(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${widget.product.description} , ${widget.product.description}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff98A2B3),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                margin: const EdgeInsets.all(10),
                height: 56,
                width: 343,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff475E3E),
                    ),
                  ),
                  child: const Text(
                    "Buy Now!",
                    style: TextStyle(color: Color(0xffF0F4EF), fontSize: 22),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
