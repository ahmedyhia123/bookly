import 'package:bookly/constans.dart';
import 'package:bookly/core/utilites/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/buy_bottom.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenwidth * 0.21,
              vertical: 20,
            ),
            child: CustomBookImage(),
          ),
          const SizedBox(height: 10),
          Text(
            'The Jungle Book',
            style: Styles.textStyle30.copyWith(
              fontFamily: kGTSectraFine,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: 0.7,
            child: Text(
              'Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontFamily: kGTSectraFine,
              ),
            ),
          ),
          const SizedBox(height: 16),
          BookRating(maa: MainAxisAlignment.center),
          const SizedBox(height: 32),
          BuyBottom(),
          SizedBox(height: 50),

          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              'You can also like',
            ),
          ),
          SizedBox(height: 16),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
