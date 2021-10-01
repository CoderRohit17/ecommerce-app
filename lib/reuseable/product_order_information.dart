// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ProductOrderInformation extends StatelessWidget {
  const ProductOrderInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white54),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            height: double.infinity,
            width: 120,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/tshirt.jpg",
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pullover",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                AppText.body("Mango"),
                Row(
                  children: [
                    AppText.body("Color: "),
                    AppText.bodyStyle("Black"),
                    SizedBox(
                      width: 10,
                    ),
                    AppText.body("Size: "),
                    AppText.bodyStyle("L"),
                  ],
                ),
                Row(
                  children: [
                    AppText.body("Unit: "),
                    AppText.bodyStyle("1"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(),
                ),
                SizedBox(height: 15),
                Text(
                  "51\$",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
