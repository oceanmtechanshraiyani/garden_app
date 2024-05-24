import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leading: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back)),
        title: const Text('Profile'),
      ),
      body: Container(
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
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVvMOz18aK4pyS5Vvl-C43QuHflXYlUx8p3TgIWSvilCf8KW4-itbJKcKBqsFBC1RkUx8&usqp=CAU"),
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
            ).marginSymmetric(horizontal: 20.0.h),
          ],
        ),
      ),
    );
  }
}
