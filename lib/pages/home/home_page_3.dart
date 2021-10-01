// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/image_view.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({Key? key}) : super(key: key);

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
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
              imagePath: "assets/images/main.jpg",
              height: 350,
              width: double.infinity,
              title: 'New Collection',
            ),
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 188,
                      child: Expanded(
                        child: Center(
                          child: Text(
                            "Summer\nsale",
                            style: TextStyle(
                                fontSize: 30,
                                color: appRedPriColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    ImageView(
                      height: 188,
                      width: 200,
                      title: "Black",
                      imagePath: "assets/images/image1.png",
                    ),
                  ],
                ),
                Expanded(
                  child: Center(
                    child: ImageView(
                        height: 376,
                        width: 200,
                        title: "",
                        imagePath: "assets/images/image.png"),
                  ),
                )
              ],
            )
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
