import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class Bookrate extends StatelessWidget {
  const Bookrate({Key? key, this.mainAxisAlignment = MainAxisAlignment.start})
      : super(key: key);
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment, // Use the property here
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        Gap(6.3),
        Text(
          '4.8',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(5),
        Text(
          '(245)',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            // color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
