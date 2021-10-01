// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ProductInCart extends StatefulWidget {
  const ProductInCart({Key? key}) : super(key: key);

  @override
  State<ProductInCart> createState() => _ProductInCartState();
}

class _ProductInCartState extends State<ProductInCart> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white54),
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
                    Container(
                      decoration:
                          // ignore: prefer_const_literals_to_create_immutables
                          BoxDecoration(
                        shape: BoxShape.circle,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(quantity.toString()),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration:
                          // ignore: prefer_const_literals_to_create_immutables
                          BoxDecoration(
                        shape: BoxShape.circle,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: Colors.black,
                            )),
                      ),
                    ),
                  ],
                ),
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
                  icon: Icon(Icons.more_vert_outlined),
                ),
                SizedBox(height: 15),
                AppText.headingThree("51\$")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
