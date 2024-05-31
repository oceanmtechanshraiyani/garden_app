import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            CupertinoIcons.arrow_left,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "Notifications",
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(CupertinoIcons.search),
                hintText: "Search Notifications",
                hintStyle: const TextStyle(color: Colors.black),
                contentPadding: const EdgeInsets.all(18.0),
                fillColor: Colors.black12,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  isThreeLine: true,
                  leading: CircleAvatar(
                    radius: 25.r,
                    backgroundImage: const NetworkImage(
                      "https://banner2.cleanpng.com/20180422/acq/kisspng-iphone-7-push-technology-apple-push-notification-s-instant-5adcad501b2410.8723371915244117281112.jpg",
                    ),
                  ),
                  title: const Text("Airtel"),
                  subtitle: const Text(
                    "By default, the ListTile in flutter can display only 2 lines. The Title and the SubTitle. In case there is a third line,",
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: Colors.grey[400],
                indent: 0.8,
                endIndent: 0.8,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
