import 'package:bookapp/features/home/data/presentation/view/wedigts/Book_Detalis_ViewBody.dart';
import 'package:flutter/material.dart';

class BookDetalisView extends StatelessWidget {
  const BookDetalisView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetalisViewBody(),
      ),
    );
  }
}
