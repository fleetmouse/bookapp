import 'package:bookapp/constants.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/utils/service_locator.dart';
import 'package:bookapp/features/home/data/repos/home_repo_impl.dart';
import 'package:bookapp/features/home/presentation/view/view_model/fetured_books_cubit/home_top_list_view_cubit.dart';
import 'package:bookapp/features/home/presentation/view/view_model/newBooksCubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
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
    //dependey injection so we can make  the muli bloc proivder look better(get it package )
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeTopListViewCubit(
            //Home repo use Api service Api service use Dio
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
            create: (context) => NewsetBooksCubit(
                  //Home repo use Api service Api service use Dio
                  getIt.get<HomeRepoImpl>(), // we used getit package here
                )..fetchNewestBooks()),
      ],
      child: MaterialApp.router(
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
      ),
    );
  }
}
