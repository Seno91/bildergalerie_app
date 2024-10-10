import 'package:bildergalerie_app/features/profile/profile_screen.dart';
import 'package:bildergalerie_app/features/screens/gallery_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
        backgroundColor: Colors.black,
        bottomNavigationBar: NavigationBar(
            indicatorColor: Colors.white,
            backgroundColor: Colors.black,
            onDestinationSelected: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
            selectedIndex: _currentIndex,
            destinations: const [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.red,
                  ),
                  label: "Home"),
              NavigationDestination(
                icon: Icon(
                  Icons.person_pin,
                  color: Colors.red,
                ),
                label: "About me",
              ),
            ]),
        appBar: AppBar(
          title: const Text(
            "Gallery Portfolio",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: screens[_currentIndex],
      ),
    );
  }
}
