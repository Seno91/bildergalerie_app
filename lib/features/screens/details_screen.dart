import 'package:bildergalerie_app/features/data/gallery_data.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.galleryItem});

  final GalleryItem galleryItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Details to...",
          style: TextStyle(
            color: Color.fromARGB(255, 80, 58, 135),
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(galleryItem.imagePath),
              Text(
                galleryItem.imageTitle,
                style: const TextStyle(
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                galleryItem.imageDescription,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w800),
              ),
              Text(
                galleryItem.imageDate,
                style: const TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
