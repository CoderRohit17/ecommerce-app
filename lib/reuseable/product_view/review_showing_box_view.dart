// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/product_view/image_view.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewShowingBoxView extends StatelessWidget {
  final bool isPhotoAvailable;
  const ReviewShowingBoxView({Key? key, required this.isPhotoAvailable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(right: 15, top: 25, left: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Helene Moore",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
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
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "June 15, 2021",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              AppText.caption(
                "The product is really beautiful.the color is not as dark as it looks in the picture.however it looks good.I bought M size.but it's bit loose for me.the sleeves the waist etc seems to bit loose.but my chest size is correct for M size.the dress is made of chiffon material, it has a lining too and it covers our knees.i bought it for around 550 rs. I'd say worth the price..",
              ),
              isPhotoAvailable
                  ? SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: ImageView(
                                  height: 100,
                                  width: 100,
                                  title: "",
                                  imagePath: "assets/images/image1.png"),
                            );
                          },
                        ),
                      ),
                    )
                  : SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Helpful",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.thumb_up_alt,
                      color: Colors.grey,
                      size: 16,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/image1.png"),
        ),
      ],
    );
  }
}
