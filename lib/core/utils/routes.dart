//go_router: ^14.6.1
import 'package:go_router/go_router.dart';
import 'package:netflix/features/mainScreen/main_screen.dart';

abstract class AppRouter {
  static const String home = "/";

  static final routes = GoRouter(routes: [
    GoRoute(
      path: home,
      builder: (context, state) => const MainScreen(),
    ),

  ]);
}