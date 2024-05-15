import 'package:bookapp/constants.dart';
import 'package:bookapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BokkApp());
}

class BokkApp extends StatelessWidget {
  const BokkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KprimeColor,
      ),
      home: SplashView(),
    );
  }
}
