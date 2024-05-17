import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Bookrate extends StatelessWidget {
  const Bookrate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        Gap(6.3),
        Text(
          '4.8',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Gap(5),
        Text(
          '(245)',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            // color: Colors.grey,
          ),
        )
      ],
    );
  }
}
