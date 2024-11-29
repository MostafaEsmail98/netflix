import 'package:flutter/material.dart';

import 'core/utils/routes.dart';
import 'core/utils/services_locator.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.routes,
        theme: ThemeData.dark(),
      ),
    );
  }
}

