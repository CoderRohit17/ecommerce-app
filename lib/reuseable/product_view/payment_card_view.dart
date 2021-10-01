// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class PaymentCardView extends StatelessWidget {
  const PaymentCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Payment",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Change",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Image.asset(
                  "assets/images/mastercard.png",
                ),
              ),
              AppText.subheading("********8541")
            ],
          ),
        ],
      ),
    );
  }
}
