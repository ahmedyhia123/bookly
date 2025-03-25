import 'package:bookly/core/utilites/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.maa = MainAxisAlignment.start});

  final MainAxisAlignment maa;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: maa,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amberAccent, size: 14),
        const SizedBox(width: 7),
        Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 7),
        Text('(4768)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
