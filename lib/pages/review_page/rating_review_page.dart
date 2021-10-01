// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/rating_rectangular_bar.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/review_showing_box_view.dart';
import 'package:flutter_ecommerce_app/reuseable/bottom_sheets/write_review_bottom_sheet.dart';

class RatingAndReviewPage extends StatefulWidget {
  const RatingAndReviewPage({Key? key}) : super(key: key);

  @override
  State<RatingAndReviewPage> createState() => _RatingAndReviewPageState();
}

class _RatingAndReviewPageState extends State<RatingAndReviewPage> {
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.headline("Rating & Reviews"),
              SizedBox(
                height: 40,
              ),
              RatingRectangularBar(),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    AppText.headingThree(
                      "8 reviews".toLowerCase(),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text("With Photo")
                  ],
                ),
              ),
              ReviewShowingBoxView(
                isPhotoAvailable: false,
              ),
              ReviewShowingBoxView(
                isPhotoAvailable: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      displayModalBottomSheet(context);
                    },
                    child: Container(
                      width: 200,
                      height: 40,
                      margin: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: appRedPriColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Write a review",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

void displayModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return WriteReviewBottomSheet();
      });
}
