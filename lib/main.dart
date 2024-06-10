import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garden_app/provider/cart_provider.dart';
import 'package:garden_app/provider/favourite_provider.dart';
import 'package:garden_app/provider/like_provider.dart';
import 'package:garden_app/screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bottom_bar_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen') ?? false;

  runApp(MyApp(seen: seen));
}

class MyApp extends StatelessWidget {
  final bool seen;

  const MyApp({super.key, required this.seen});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LikeProvider()),
        ChangeNotifierProvider(create: (context) => FavouriteItemProvider()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              textTheme: GoogleFonts.poppinsTextTheme(),
            ),
            debugShowCheckedModeBanner: false,
            home: seen ? const BottomNavBarScreen() : const SplashScreen(),
          );
        },
      ),
    );
  }
}
