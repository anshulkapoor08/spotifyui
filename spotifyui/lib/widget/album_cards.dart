import 'package:flutter/material.dart';

class Albumcard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  const Albumcard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: image, width: 150, height: 150, fit: BoxFit.cover),
        const SizedBox(
          height: 20,
        ),
        Text(label)
      ],
    );
  }
}