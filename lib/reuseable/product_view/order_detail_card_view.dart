// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';

class OrderDetailCardView extends StatefulWidget {
  const OrderDetailCardView({Key? key}) : super(key: key);

  @override
  State<OrderDetailCardView> createState() => _OrderDetailCardViewState();
}

class _OrderDetailCardViewState extends State<OrderDetailCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Text(
                "Order №: 19658520",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "17-05-2021",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Tracking Number: ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "JK9856320147",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Ouantity: ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "3",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "Total Amount: ",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Text(
                "112\$",
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 40,
                width: 175,
                child: AppButton.outline(title: "Details"),
              ),
              Expanded(
                child: Container(),
              ),
              Text(
                "Delivered",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
