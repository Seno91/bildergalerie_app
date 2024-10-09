import 'package:bildergalerie_app/gallery_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: MasonryGridView.builder(
          itemCount: galleryData.length,
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Image.asset(galleryData[index].imagePath),
                Container(
                  color: Colors.purple[200],
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        galleryData[index].imageTitle,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 80, 58, 135),
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      const Spacer()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
