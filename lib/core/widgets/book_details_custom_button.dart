import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsCustomButton extends StatelessWidget {
  const BookDetailsCustomButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      required this.borderRadius});
  final String text;
  final Color textColor;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          text,
          style: FontData.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
