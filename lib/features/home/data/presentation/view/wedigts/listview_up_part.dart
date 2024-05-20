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
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: HomeUpList(),
                );
              },
            ),
          );
        } else if (state is HomeTopListViewFailure) {}
      },
    );
  }
}
