// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/promo_code_view.dart';

class PromoCodeBottomSheet extends StatelessWidget {
  const PromoCodeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          color: Color(0xfff9f9f9)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 10, left: 10, right: 20, bottom: 5),
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Your Promo Codes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return PromoCodeCardView();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
