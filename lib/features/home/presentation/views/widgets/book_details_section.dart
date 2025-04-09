import 'package:bookly/constans.dart';
import 'package:bookly/core/utilites/styles.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/buy_bottom.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final Bookmodel bookModel;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenwidth * 0.21,
            vertical: 20,
          ),
          child: CustomBookImage(
            urlImage: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          maxLines: 2,
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(
            fontFamily: kGTSectraFine,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'No Author',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontFamily: kGTSectraFine,
            ),
          ),
        ),
        const SizedBox(height: 16),
        BookRating(maa: MainAxisAlignment.center),
        const SizedBox(height: 32),
        BuyBottom(url: bookModel.volumeInfo.previewLink!,),
      ],
    );
  }
}
