import 'package:bookly/constans.dart';
import 'package:bookly/core/utilites/assets.dart';
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
            Text('Best Seller', style: Styles.textStyle30),
            SizedBox(height: 30),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2 / 3,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: AssetImage(AssetsData.test),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                'Harry Poter\nand the Goblet of Fire',
                style: Styles.textStyle22.copyWith(fontFamily: kGTSectraFine),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
