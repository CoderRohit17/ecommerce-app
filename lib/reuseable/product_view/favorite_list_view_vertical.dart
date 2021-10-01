// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/icon_button.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/product_labels.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FavoriteListViewVertical extends StatelessWidget {
  final bool inDiscount;
  final bool isFavourite;
  final String saleTitle;
  const FavoriteListViewVertical(
      {Key? key,
      required this.inDiscount,
      required this.isFavourite,
      required this.saleTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/images/tshirt.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Row(
                children: [
                  RatingBar.builder(
                    maxRating: 2,
                    updateOnDrag: false,
                    itemSize: 18,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (double value) {},
                  ),
                  Text(
                    "(3)",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              ),
              AppText.body("Dress Style"),
              AppText.bodyStyle("Girls Fashion"),
              Row(
                children: [
                  inDiscount
                      ? Text(
                          "91\$",
                          style: TextStyle(
                            color: Colors.grey,
                            decorationColor: Colors.black87,
                            decorationStyle: TextDecorationStyle.solid,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16,
                          ),
                        )
                      : Text(""),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      "39\$",
                      style: TextStyle(
                        color: Colors.black,
                        decorationStyle: TextDecorationStyle.solid,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProductLabels(
                title: saleTitle.toString(),
                backColor: inDiscount ? appRedPriColor : appBlackColor),
          ),
          Positioned(
            left: 125,
            top: 160,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: const Color(0xFFfffff0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 10.0,
                    ),
                  ]),
              child: AppIconButton(
                icon: Icon(Icons.favorite),
                isAddBtn: false,
              ),
            ),
          ),
          isFavourite
              ? Positioned(
                  left: 140,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.black87,
                    ),
                  ),
                )
              : Text(""),
        ],
      ),
    );
  }
}
