import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/features/home/presentation/view/wedigts/bookrate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/BookDetalisView');
      },
      child: SizedBox(
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const Gap(3),
                  const Text(
                    'J.K Rowling',
                    style: TextStyle(fontSize: 14),
                  ),
                  const Gap(3),
                  const Row(
                    children: [
                      Text(
                        '19.99\$',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Bookrate(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
