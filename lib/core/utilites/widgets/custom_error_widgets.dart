import 'package:bookly/core/utilites/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorWidgets extends StatelessWidget {
  const CustomErrorWidgets({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: Styles.textStyle18.copyWith(color: Colors.red),
    );
  }
}
