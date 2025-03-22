import 'package:bookly/constans.dart';
import 'package:bookly/core/utilites/app_router.dart';
import 'package:bookly/core/utilites/assets.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingLogoAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigationToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(flex: 3),
        SlideTransition(
          position: slidingLogoAnimation,
          child: SvgPicture.asset(AssetsData.logo, height: 70, width: 70),
        ),
        Spacer(flex: 2),

        SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            style: TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
        Spacer(flex: 1),
      ],
    );
  }

  void navigationToHomeView() {
    Future.delayed(Duration(seconds: 3), () {
      // Get.to(
      //   () => const HomeView(),
      //   transition: Transition.fadeIn,
      //   duration: kTransitionDuration,
      // );

      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 3),
      end: Offset.zero,
    ).animate(animationController);

    slidingLogoAnimation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }
}
