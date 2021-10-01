// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingRectangularBar extends StatelessWidget {
  const RatingRectangularBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [AppText.headline("4.5"), AppText.body("25 ratings")],
        ),
        SizedBox(
          width: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RatingBar.builder(
              maxRating: 5,
              itemSize: 16,
              itemCount: 5,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
            ),
            RatingBar.builder(
              maxRating: 4,
              itemSize: 16,
              itemCount: 4,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
            ),
            RatingBar.builder(
              maxRating: 3,
              itemSize: 16,
              itemCount: 3,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
            ),
            RatingBar.builder(
              maxRating: 2,
              itemSize: 16,
              itemCount: 2,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
            ),
            RatingBar.builder(
              maxRating: 1,
              itemSize: 16,
              itemCount: 1,
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (double value) {},
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
              width: 100,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 80,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 60,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 25,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              width: 10,
              margin: const EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.red),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "10",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "9",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "3",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "2",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "1",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
