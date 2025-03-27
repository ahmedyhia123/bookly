import 'package:bookly/core/utilites/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
          'You can also like',
        ),
        SizedBox(height: 16),
        SimilarBooksListView(),
      ],
    );
  }
}
