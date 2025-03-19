import 'package:bookly/core/utilites/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          SvgPicture.asset(AssetsData.logo, height: 24),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 30),
          ),
        ],
      ),
    );
  }
}
