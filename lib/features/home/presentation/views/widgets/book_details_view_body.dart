import 'package:bookly/features/home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
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
              horizontal: screenwidth * 0.17,
              vertical: 30,
            ),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
