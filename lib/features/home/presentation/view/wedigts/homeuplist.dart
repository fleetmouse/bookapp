import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeUpList extends StatelessWidget {
  const HomeUpList({super.key, required this.ImgUrl});
  final String ImgUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(
          // so we can add fade when the image apper
          imageUrl: ImgUrl,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
