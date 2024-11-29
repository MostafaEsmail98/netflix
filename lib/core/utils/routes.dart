//go_router: ^14.6.1
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/params/params.dart';
import 'package:netflix/features/details/presentation/manager/details_movie_cubit.dart';
import 'package:netflix/features/details/presentation/pages/details_page.dart';
import 'package:netflix/features/mainScreen/main_screen.dart';
import 'package:netflix/features/splash/presentation/pages/splash_page.dart';

abstract class AppRouter {
  static const String splash = "/";
  static const String home = "/home";
  static const String details = "/details";

  static final routes = GoRouter(routes: [
    GoRoute(
      path: splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: home,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      path: details,
      builder: (context, state) {
        var id = state.extra as num;
        return BlocProvider(
          create: (context) =>
              DetailsMovieCubit()..getDetailsResult(DetailsParams(id: id)),
          child: const DetailsPage(),
        );
      },
    ),
  ]);
}
