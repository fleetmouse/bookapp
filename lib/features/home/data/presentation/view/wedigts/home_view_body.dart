import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/bestseller.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/custom_app_bar.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/listview_up_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30), // up or side - symertric
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(), // custom app bar in wedgit file
          BooksListView(), //list view using the homeuplist wedigt
          Gap(50),
          Text(
            'Best Seller',
            style: Style.titlesec,
          ),
          Gap(20),
          BestSellerListView()
        ],
      ),
    );
  }
}
