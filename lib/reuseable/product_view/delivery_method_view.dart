// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class DeliveryMethodView extends StatelessWidget {
  const DeliveryMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Delivery method",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 75,
                width: 75,
                color: Colors.white,
                child: Image.asset("assets/images/fedex.png"),
              ),
              Container(
                height: 75,
                width: 75,
                color: Colors.white,
                child: Image.asset("assets/images/usps.png"),
              ),
              Container(
                height: 75,
                width: 75,
                color: Colors.white,
                child: Image.asset("assets/images/dhl.png"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
