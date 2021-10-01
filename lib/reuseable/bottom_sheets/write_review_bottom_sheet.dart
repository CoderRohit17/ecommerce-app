// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/icon_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class WriteReviewBottomSheet extends StatelessWidget {
  const WriteReviewBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          color: Color(0xffF5F5F5)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AppText.headingThree("What is your rate?"),
          RatingBar.builder(
            maxRating: 5,
            itemSize: 50,
            itemCount: 5,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (double value) {},
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Please share your opinion \n        about the product",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(color: Colors.white),
            child: TextFormField(
              maxLines: 10,
              enabled: true,
              controller: TextEditingController(),
              decoration: InputDecoration.collapsed(hintText: "Your review"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              AppIconButton(
                icon: Icon(Icons.camera_alt),
                isAddBtn: false,
                isDisable: false,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              title: "send review".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
