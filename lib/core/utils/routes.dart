//go_router: ^14.6.1
import 'package:go_router/go_router.dart';
import 'package:netflix/features/home/presentation/pages/home_page.dart';

abstract class AppRouter {
  static const String home = "/Home";

  static final routes = GoRouter(routes: [
    GoRoute(
      path: home,
      builder: (context, state) => const HomePage(),
    ),

  ]);
}