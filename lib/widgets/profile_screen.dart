import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Image(
                  image: AssetImage("assets/profile.png"),
                  //   height: 200,
                  //   width: 200,
                ),
              ),
              SizedBox(height: 10),
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
        ),
      ),
    );
  }
}
