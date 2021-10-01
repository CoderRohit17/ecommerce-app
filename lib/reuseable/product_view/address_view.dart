// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  final bool useThisShipping;
  const AddressView({Key? key, required this.useThisShipping})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "John Doe",
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
                  useThisShipping ? "Edit" : "Change",
                  style: TextStyle(color: Colors.red, fontSize: 16),
                ),
              )
            ],
          ),
          Text(
            "22 Asfordby Rd,",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            "Aird Leimhe, HS3 7BG, United Kingdom",
            style: TextStyle(fontSize: 16),
          ),
          if (useThisShipping)
            Row(
              children: const [
                Checkbox(
                  value: false,
                  onChanged: null,
                  checkColor: Colors.white,
                  activeColor: Colors.red,
                ),
                Text(
                  "Use as the shipping address",
                  style: TextStyle(fontSize: 16),
                )
              ],
            )
        ],
      ),
    );
  }
}
