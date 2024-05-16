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
          alignment: Alignment.center,
          child: const Column(
            children: [
              SizedBox(
                height: 120,
                width: 220,
                child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVvMOz18aK4pyS5Vvl-C43QuHflXYlUx8p3TgIWSvilCf8KW4-itbJKcKBqsFBC1RkUx8&usqp=CAU"),
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
