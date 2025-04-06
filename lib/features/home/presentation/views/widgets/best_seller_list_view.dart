import 'package:bookly/core/utilites/app_router.dart';
import 'package:bookly/core/utilites/widgets/custom_error_widgets.dart';
import 'package:bookly/core/utilites/widgets/custom_loding_indicator.dart';
import 'package:bookly/features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucsses) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            itemBuilder:
                (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 18),
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(() => BookDetailsView());
                      GoRouter.of(context).push(AppRouter.kBookDetails);
                    },
                    child: BookListViewItem(bookmodel: state.books[index]),
                  ),
                ),
          );
        } else if (state is NewestBooksFailuer) {
          return CustomErrorWidgets(errorMessage: state.errorMessage);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
