import 'package:bookapp/features/home/data/presentation/view/wedigts/custom_app_bar.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/homeuplist.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar(), // custom app bar in wedgit file
        HomeUpList(),
      ],
    );
  }
}
