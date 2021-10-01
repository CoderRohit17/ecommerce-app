// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/name_list_view.dart';

class ProductCategory2 extends StatelessWidget {
  const ProductCategory2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: appBlackColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 1,
            ),
            Text(
              "Categories",
              style: TextStyle(color: Colors.black),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: appBlackColor,
                size: 32,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 55,
              width: double.infinity,
              decoration: BoxDecoration(
                color: appRedPriColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "VIEW ALL ITEMS",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AppText.body("Choose Category"),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 50,
                itemBuilder: (BuildContext context, int index) {
                  return NameListView(name: "Name ${index + 1}");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
