// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductListCatalog extends StatefulWidget {
  const ProductListCatalog({Key? key}) : super(key: key);

  @override
  State<ProductListCatalog> createState() => _ProductListCatalog();
}

class _ProductListCatalog extends State<ProductListCatalog> {
  int quantity = 1;
  double rating = 0;
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                height: double.infinity,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    image: DecorationImage(
                        image: AssetImage(
                      "assets/images/tshirt.jpg",
                    ))),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.headingThree("Pullover"),
                    AppText.body("Mango"),
                    Row(
                      children: [
                        RatingBar.builder(
                          maxRating: 2,
                          updateOnDrag: true,
                          itemSize: 20,
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) => setState(
                            () {
                              this.rating = rating;
                            },
                          ),
                        ),
                        AppText.caption("($rating)"),
                      ],
                    ),
                    AppText.headingThree("51\$"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 80,
          left: 325,
          child: FloatingActionButton(
            onPressed: () {
              isFavourite = !isFavourite;
            },
            backgroundColor: Colors.white,
            elevation: 5,
            child: Icon(Icons.favorite,
                color: isFavourite ? Colors.red : Colors.grey),
          ),
        ),
      ],
    );
  }
}
