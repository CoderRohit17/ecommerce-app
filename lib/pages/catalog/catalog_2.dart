// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/favorite_list_view_vertical.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/filter_bar.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Catalog2 extends StatelessWidget {
  const Catalog2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
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
              "Women's top",
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
        elevation: 0.5,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Container(
            height: 45,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    margin: const EdgeInsets.all(5),
                    width: 125,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black87),
                    child: Center(
                      child: Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: double.infinity,
            color: Colors.white,
            child: FilterBar(),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              padding: EdgeInsets.only(left: 8),
              crossAxisCount: 2,
              itemCount: 50,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              itemBuilder: (context, index) {
                return FavoriteListViewVertical(
                  saleTitle: "New",
                  inDiscount: true,
                  isFavourite: false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
