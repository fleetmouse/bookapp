import 'package:bookapp/core/custome_error_widget.dart';
import 'package:bookapp/core/loading.dart';
import 'package:bookapp/features/home/presentation/view/view_model/fetured_books_cubit/home_top_list_view_cubit.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/homeuplist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTopListViewCubit, HomeTopListViewState>(
      builder: (context, state) {
        if (state is HomeTopListSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: HomeUpList(
                    ImgUrl: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is HomeTopListViewFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return CustomLoadingIndcator(); // make a better looking one
        }
      },
    );
  }
}
