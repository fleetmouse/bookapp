import 'package:bookapp/constants.dart';
import 'package:bookapp/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BokkApp());
}

class BokkApp extends StatefulWidget {
  //converted so i cant use anamtion
  const BokkApp({super.key});

  @override
  State<BokkApp> createState() => _BokkAppState();
}

class _BokkAppState extends State<BokkApp> with SingleTickerProviderStateMixin {
  // remmber the watch it telles you when to tick aka refersh

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KprimeColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xFF5C4B51)),
          bodyText2: TextStyle(color: Color(0xFF5C4B51)),
        ),
      ),
      home: SplashView(),
    );
  }
}
