import 'package:bookly/core/utilites/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(flex: 3),
        SvgPicture.asset(AssetsData.logo, height: 70, width: 70),
        Spacer(flex: 2),

        const Text(
          'Read Free Books',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 1),
      ],
    );
  }
}
