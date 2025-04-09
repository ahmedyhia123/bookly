import 'package:bookly/core/utilites/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuyBottom extends StatelessWidget {
  const BuyBottom({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenWidth / 2.5,
          height: 55,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              "Free",
              style: Styles.textStyle16.copyWith(color: Colors.black),
            ),
          ),
        ),
        GestureDetector(
          onTap: () async {
            if (!await launchUrl(Uri.parse(url))) {
              throw Exception('Could not launch $url');
            }
          },
          child: Container(
            width: screenWidth / 2.5,
            height: 55,
            decoration: BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Center(
              child: Text(
                'Free preview',
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
