import 'package:bildergalerie_app/features/profile/presentation/profile_screen.dart';
import 'package:bildergalerie_app/features/gallery/presentation/gallery_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const GalleryScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CurvedNavigationBar(
            animationCurve: Curves.bounceOut,
            buttonBackgroundColor: Colors.red,
            color: Colors.black,
            animationDuration: const Duration(milliseconds: 900),
            backgroundColor: const Color.fromARGB(255, 34, 34, 34),
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            index: _currentIndex,
            items: const [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.person_pin,
                color: Colors.white,
              ),
            ]),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(50))),
          title: const Text(
            "Gallery Portfolio",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: screens[_currentIndex],
      ),
    );
  }
}
