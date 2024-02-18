import 'package:flutter/material.dart';

class RowAlbumCards extends StatelessWidget {
  final AssetImage images;
  final String label;
  const RowAlbumCards({
    super.key,
    required this.images,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white12, borderRadius: BorderRadius.circular(5)),
          clipBehavior: Clip.antiAlias,
          child: Row(
            children: [
              Image(
                image: images,
                height: 45,
                width: 45,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                softWrap: true,
                overflow: TextOverflow.clip,
                label,
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
