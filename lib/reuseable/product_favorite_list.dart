// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/icon_button.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/product_labels.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductFavoriteList extends StatelessWidget {
  final bool inStock;
  final bool inOffer;
  final String? offerText;
  final bool inDiscount;

  const ProductFavoriteList({
    Key? key,
    required this.inStock,
    required this.inOffer,
    this.offerText,
    required this.inDiscount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: Colors.white70),
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  height: double.infinity,
                  width: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/tshirt.jpg",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.body("LIME"),
                      AppText.headingThree("Pullover"),
                      Row(
                        children: [
                          AppText.body("Color:"),
                          AppText.bodyStyle("Black"),
                          SizedBox(
                            width: 10,
                          ),
                          AppText.body("Size:"),
                          AppText.bodyStyle("L"),
                        ],
                      ),
                      Row(
                        children: [
                          !inDiscount
                              ? AppText.subheading("39\$")
                              : Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      "51\$",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        decorationColor: Colors.black87,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 16,
                                      ),
                                    ),
                                    AppText.subheading("39\$")
                                  ],
                                ),
                          RatingBar.builder(
                            maxRating: 2,
                            updateOnDrag: false,
                            itemSize: 20,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (double value) {},
                          ),
                          AppText.caption(
                            "(3)",
                          ),
                        ],
                      ),
                      if (inStock == false) AppText.body("Out Of Stock")
                    ],
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.highlight_remove_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Expanded(child: Container()),
                      inStock
                          ? AppIconButton(
                              icon: Icon(
                                Icons.shopping_bag,
                                size: 20,
                              ),
                              isAddBtn: false,
                              isDisable: false,
                            )
                          : Expanded(child: Container()),
                    ],
                  ),
                ),
              ],
            ),
          ),
          inOffer
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ProductLabels(
                        title: offerText.toString(),
                        backColor:
                            !inDiscount ? appBlackColor : appRedPriColor),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
