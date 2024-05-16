import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/custom_app_bar.dart';
import 'package:bookapp/features/home/data/presentation/view/wedigts/listview_up_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

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

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test3),
                  fit: BoxFit.fill,
                ), // so the pic cant take the container size
              ),
            ),
          ),
          const Gap(30),
          Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  'The Godfather Mario Puzo',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.merriweather(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
