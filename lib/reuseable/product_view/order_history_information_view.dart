// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderHistoryInformationView extends StatelessWidget {
  const OrderHistoryInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 300,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                "Shipping Address:   ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Flexible(
                child: Text(
                  "3 Newbridge Court ,Chino Hills, CA 91709, United States",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Payment method:     ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 35,
                width: 35,
                child: Image.asset("assets/images/mastercard.png"),
              ),
              Text(
                "**** **** **** 3156",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Delivery method:      ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "FedEx, 3 days, 15\$",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Discount:                  ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "10%, Personal promo code",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Total Amount:           ",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                "133\$",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
/*
Shipping Address:
3 Newbridge Court ,Chino Hills, 
CA 91709, United States
Payment method:
**** **** **** 3947
Delivery method:
FedEx, 3 days, 15$
Discount:
10%, Personal promo code
Total Amount:
133$

 */