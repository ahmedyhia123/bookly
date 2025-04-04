import 'package:bookly/core/utilites/widgets/custom_error_widgets.dart';
import 'package:bookly/core/utilites/widgets/custom_loding_indicator.dart';
import 'package:bookly/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSucsses) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: const CustomBookImage(),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailuer) {
          return CustomErrorWidgets(errorMessage: state.errorMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
