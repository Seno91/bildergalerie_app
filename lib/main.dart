import 'package:bildergalerie_app/features/profile/profile_screen.dart';
import 'package:bildergalerie_app/features/screens/gallery_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            backgroundColor: Colors.black,
            indicatorColor: const Color.fromARGB(255, 74, 41, 121),
            shadowColor: Colors.white,
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
                    color: Colors.white,
                  ),
                  label: "Home"),
              NavigationDestination(
                icon: Icon(
                  Icons.person_pin,
                  color: Colors.white,
                ),
                label: "About me",
              ),
            ]),
        appBar: AppBar(
          title: const Text(
            "Gallery Portfolio",
            style: TextStyle(
              color: Color.fromARGB(255, 80, 58, 135),
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
