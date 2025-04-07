import 'package:bookly/constans.dart';
import 'package:bookly/core/utilites/styles.dart';
import 'package:bookly/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookmodel});
  final Bookmodel bookmodel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          CustomBookImage(urlImage: bookmodel.volumeInfo.imageLinks.thumbnail),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    maxLines: 2,
                    bookmodel.volumeInfo.title!,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20.copyWith(
                      fontFamily: kGTSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  maxLines: 1,
                  textAlign: TextAlign.start,
                  bookmodel.volumeInfo.authors?[0] ?? 'No Author',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3),

                Row(
                  children: [
                    Text('Free', style: Styles.textStyle20),
                    const Spacer(),
                    BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
