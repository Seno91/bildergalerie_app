// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';

// class NavigationBar extends StatefulWidget {
//   const NavigationBar({super.key});

//   @override
//   State<NavigationBar> createState() => _NavigationBarState();
// }

// class _NavigationBarState extends State<NavigationBar> {
//   int _currentIndex = 0;
//   List<Widget> body = const [
//     Icon(Icons.home),
//     Icon(Icons.person_pin),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: body[_currentIndex],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         index: _currentIndex,
//         onTap: (int newIndex) {
//           setState(() {
//             _currentIndex = newIndex;
//           });
//         },
//         items: const [
//           Icon(
//             Icons.home,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.person_pin,
//             color: Colors.white,
//           )
//         ],
//       ),
//     );
//   }
// }


