import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProfileHomeScreen extends StatefulWidget {
  const ProfileHomeScreen({super.key});

  @override
  State<ProfileHomeScreen> createState() => _ProfileHomeScreenState();
}

class _ProfileHomeScreenState extends State<ProfileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        title: const Text('Profile'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0.h),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
              width: 220,
              child: Image(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVvMOz18aK4pyS5Vvl-C43QuHflXYlUx8p3TgIWSvilCf8KW4-itbJKcKBqsFBC1RkUx8&usqp=CAU",
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Jeet',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0xff344054),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffD0D5DD),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
