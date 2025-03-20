import 'package:bookly/core/utilites/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('19.99 €', style: Styles.textStyle20),
        const Spacer(),
        Icon(FontAwesomeIcons.solidStar, color: Colors.amberAccent, size: 13),
        const SizedBox(width: 6),
        Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 6),
        Text('(4768)', style: Styles.textStyle14.copyWith(color: Colors.grey)),
      ],
    );
  }
}
