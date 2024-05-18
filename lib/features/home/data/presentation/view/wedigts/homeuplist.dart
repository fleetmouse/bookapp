import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeUpList extends StatelessWidget {
  const HomeUpList({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(AssetsData.test1),
            fit: BoxFit.fill,
          ), // so the pic cant take the container size
        ),
      ),
    );
  }
}
