// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/product_sizes.dart';

class BottomSheetOfProductSize extends StatelessWidget {
  const BottomSheetOfProductSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          color: Colors.white),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AppText.headingThree("Select Size"),
          ProductSizes(),
        ],
      ),
    );
  }
}
