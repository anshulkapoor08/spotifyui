import 'package:flutter/material.dart';

class SongCards extends StatelessWidget {
  final AssetImage image;
  final String label;
  const SongCards({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Column(
      children: [
        Image(
          image: image,
          height: 100,
          width: 100,
        ),
         const SizedBox(
                width: 10,
              ),
              Text(label),
      ],
    ));
  }
}
