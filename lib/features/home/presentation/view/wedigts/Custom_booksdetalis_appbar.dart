import 'package:flutter/material.dart';

class CustomAppBar_bookDetalis extends StatelessWidget {
  const CustomAppBar_bookDetalis({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close_rounded),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart_outlined),
        )
      ],
    );
  }
}
