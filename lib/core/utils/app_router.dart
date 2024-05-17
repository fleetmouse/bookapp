import 'package:bookapp/features/home/data/presentation/view/home_view.dart';
import 'package:bookapp/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: '/homeview',
      builder: (context, state) {
        return const HomeView();
      },
    ),
  ]);
}
