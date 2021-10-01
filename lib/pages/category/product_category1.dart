// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/pages/tab_screen/kids_category_tab.dart';
import 'package:flutter_ecommerce_app/pages/tab_screen/men_category_tab.dart';
import 'package:flutter_ecommerce_app/pages/tab_screen/women_category_tab.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class ProductCategory1 extends StatefulWidget {
  const ProductCategory1({Key? key}) : super(key: key);

  @override
  State<ProductCategory1> createState() => _ProductCategory1State();
}

class _ProductCategory1State extends State<ProductCategory1>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
          bottom: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: controller,
              tabs: [
                Tab(
                  text: "Women",
                ),
                Tab(
                  text: "Men",
                ),
                Tab(
                  text: "Kids",
                ),
              ]),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            WomenCategoryTab(),
            MenCategoryTab(),
            KidCategoryTab(),
          ],
        ),
      ),
    );
  }
}
