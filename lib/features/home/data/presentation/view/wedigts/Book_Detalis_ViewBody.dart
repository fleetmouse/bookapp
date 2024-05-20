import 'package:bookapp/features/home/data/presentation/view/wedigts/similer_books_listview.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/Custom_booksdetalis_appbar.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/bookrate.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/books_action.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/homeuplist.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =
        MediaQuery.of(context).size.width; //we resize based on the screen
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomAppBar_bookDetalis(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const HomeUpList(),
          ),
          const Gap(43),
          Text(
            'The Jungle Book',
            style: GoogleFonts.merriweather(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(6),
          Text(
            'Rudyard Kipling',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
          const Gap(18),
          const Bookrate(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const Gap(37),
          const BookAction(),
          const Gap(50),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also Like',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Gap(16),
          SimilerbooksListView(),
          Gap(40),
        ],
      ),
    );
  }
}
