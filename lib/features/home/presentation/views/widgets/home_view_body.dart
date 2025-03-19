import 'package:bookly/core/utilites/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/feature_books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SizedBox(height: 30),
            FeatureBooksListView(),
            SizedBox(height: 50),
            Text('Best Seller', style: Styles.titleMedium),
          ],
        ),
      ),
    );
  }
}
