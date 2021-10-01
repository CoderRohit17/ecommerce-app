// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/product_cart_bag.dart';
import 'package:flutter_ecommerce_app/reuseable/bottom_sheets/promocode_bottom_sheet.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
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
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "My Bag",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return ProductInCart();
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 10, left: 10, right: 20, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Enter your promo code",
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black87),
                    child: IconButton(
                      onPressed: () {
                        displayModalBottomSheet(context);
                      },
                      icon: Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: const EdgeInsets.only(left: 15, right: 15, top: 8),
              child: Row(
                children: [
                  Text(
                    "Total Amount:",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  AppText.headingThree("\$151")
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 8),
              child: AppButton(
                title: "Check Out".toUpperCase(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void displayModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return PromoCodeBottomSheet();
      });
}
