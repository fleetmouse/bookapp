import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/bestseller_listView.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/custom_app_bar.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/listview_up_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 30), // make padding const it repet alot
                  child: CustomAppbar(),
                ), // custom app bar in wedgit file
                BooksListView(), //list view using the homeuplist wedigt
                Gap(50),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Best Seller',
                    style: Style.titlesec,
                  ),
                ),
                Gap(20),
              ],
            ),
          ),
        ),
        SliverFillRemaining(
          //casue its at the bottom we use fill
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
