// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/favorite_list_view_vertical.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/image_view.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageView(
              imagePath: "assets/images/banner.png",
              height: 200,
              width: double.infinity,
              title: 'Fashion Sale',
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.headingOne("Sale"),
                          AppText.body("Super summer sale")
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      AppText.caption("See All")
                    ],
                  ),
                  SizedBox(
                      height: 320,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                          FavoriteListViewVertical(
                            saleTitle: "-30%",
                            inDiscount: true,
                            isFavourite: false,
                          ),
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.headingOne("New"),
                          AppText.body("You've never seen it before.")
                        ],
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      AppText.caption("See All")
                    ],
                  ),
                  SizedBox(
                    height: 320,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                        FavoriteListViewVertical(
                          saleTitle: "New",
                          inDiscount: false,
                          isFavourite: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: appRedPriColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
