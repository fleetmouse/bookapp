import 'package:bookapp/features/home/presentation/view/wedigts/homeuplist.dart';
import 'package:flutter/material.dart';

class SimilerbooksListView extends StatelessWidget {
  const SimilerbooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: HomeUpList(
              ImgUrl: '',
            ),
          );
        },
      ),
    );
  }
}
