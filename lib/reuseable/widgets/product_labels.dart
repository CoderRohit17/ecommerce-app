// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductLabels extends StatelessWidget {
  final Color backColor;
  final String title;

  const ProductLabels({Key? key, required this.title, required this.backColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: backColor),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
