import 'package:bildergalerie_app/features/screens/details_screen.dart';
import 'package:bildergalerie_app/features/data/gallery_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: galleryData.length,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailsScreen(
                  galleryItem: galleryData[index],
                ),
              ),
            );
          },
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(galleryData[index].imagePath),
              ),
              Text(
                galleryData[index].imageTitle,
                style: const TextStyle(
                  color: Color.fromARGB(255, 74, 41, 121),
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
