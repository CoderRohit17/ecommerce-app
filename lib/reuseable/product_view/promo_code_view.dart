// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class PromoCodeCardView extends StatefulWidget {
  const PromoCodeCardView({Key? key}) : super(key: key);

  @override
  State<PromoCodeCardView> createState() => _PromoCodeCardViewState();
}

class _PromoCodeCardViewState extends State<PromoCodeCardView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              gradient: LinearGradient(
                colors: const [
                  Color(0xffBF190E),
                  Color(0xffEB001B),
                ],
                tileMode: TileMode.clamp,
              ),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "10",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "%",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "off",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "New User Offer",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "NEWUSER25",
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.body("6 Days Remaining"),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 100,
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: appRedPriColor,
                  ),
                  child: Center(
                    child: Text(
                      "Apply",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
