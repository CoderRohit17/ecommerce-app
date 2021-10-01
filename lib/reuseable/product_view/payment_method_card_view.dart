// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class PaymentMethodCardView extends StatelessWidget {
  const PaymentMethodCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff222222),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/chip.png"),
            Text(
              "**** **** **** 9652",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  height: 100,
                  width: 200,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Card Holder Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            "Expiry Date",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Jennyfer Doe",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            "05/*25",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        height: 50,
                        width: 70,
                        child: Image.asset(
                          "assets/images/mastercard.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
