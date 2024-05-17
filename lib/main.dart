import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: KprimeColor,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.montserrat(color: KtextColor), //Color
          bodyMedium: GoogleFonts.montserrat(
              color: KtextColor), //Color - might change it later
        ),
      ),
    );
  }
}
