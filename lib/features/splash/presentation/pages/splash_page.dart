import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:netflix/core/utils/routes.dart';

import '../../../../generated/assets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHomePage();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width:MediaQuery.sizeOf(context).width*.6 ,
                child: Image.asset(Assets.imagesLogo,)),
            AnimatedBuilder(
              animation: slidingAnimation,
              builder: (context, _) {
                return SlideTransition(
                  position: slidingAnimation,
                  child: const Text(
                    "Watch Free Movies",
                    textAlign: TextAlign.center,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToHomePage() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() => const HomePage(),
      //     transition: Transition.fadeIn,
      //     duration: const Duration(milliseconds: 250));
      GoRouter.of(context).pushReplacement(AppRouter.home);

    });
  }
}
