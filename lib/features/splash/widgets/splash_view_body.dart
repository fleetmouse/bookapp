import 'package:bookapp/core/utils/assets.dart';
import 'package:bookapp/features/home/data/presentation/view/home_view.dart';
import 'package:bookapp/features/splash/widgets/slide.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  // remmber the watch it telles you when to tick aka refersh
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  // remmber the watch it telles you when to tick aka refersh

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(begin: Offset(0, 2), end: Offset.zero)
        .animate(animationController);

    // Start the animation
    animationController.forward();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        () => HomeView(), // nav to the home page .
        transition: Transition.fade,
        duration: const Duration(milliseconds: 450),
      );
    });
    // dispose the controller
  }

  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 150,
          height: 150,
          child: Image.asset(AssetsData.logo),
        ),
        const Gap(20),
        SlideText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
