import 'package:bookapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 40),
      child: Row(
        children: [
          Container(
            width: 70, // adjust this value as needed
            height: 70, // adjust this value as needed
            child: Image.asset(AssetsData.logo),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push('/SearchViewBody');
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
