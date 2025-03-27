import 'package:bookly/core/utilites/app_router.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder:
          (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {
                // Get.to(() => BookDetailsView());
                GoRouter.of(context).push(AppRouter.kBookDetails);
              },
              child: BookListViewItem(),
            ),
          ),
    );
  }
}
