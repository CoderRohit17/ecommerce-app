// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/category_card_view.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class KidCategoryTab extends StatelessWidget {
  const KidCategoryTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            height: 125,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: appRedPriColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Kids Sales".toUpperCase(),
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Up to 50% off",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return CategoryViewCard(
                  title: "New ${index + 1}",
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
