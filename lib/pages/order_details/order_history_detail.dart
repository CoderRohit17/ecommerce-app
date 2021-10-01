// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/order_history_information_view.dart';
import 'package:flutter_ecommerce_app/reuseable/product_order_information.dart';

class OrderHistoryDetails extends StatelessWidget {
  const OrderHistoryDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              "Order Details",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Order №: 1947034",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "05-12-2019",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Tracking number:",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "IW3475453455",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "Delivered",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: appGreenSuccessColor,
                    ),
                  ),
                ],
              ),
              Text(
                "3 items",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ProductOrderInformation();
                },
              ),
              Text(
                "Order information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              OrderHistoryInformationView(),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton.outline(
                      title: "Reorder",
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    flex: 1,
                    child: AppButton(
                      title: "Leave feedback",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
