// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';

import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/product_brand_checkbox.dart';

class FilterListPage extends StatelessWidget {
  const FilterListPage({Key? key}) : super(key: key);

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
          mainAxisAlignment: MainAxisAlignment.center,
  
          children: [
            Text(
              "Brand",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: Column(
        children: [
          Container(
            height: 45,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: ListTile(
              leading: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: TextFormField(
                decoration: InputDecoration.collapsed(hintText: "Search"),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ProductBrandCheckBox();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: AppButton.outline(title: "Discard"),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: AppButton(title: "Apply"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
