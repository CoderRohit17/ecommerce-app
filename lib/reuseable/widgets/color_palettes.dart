import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class ColorPalettes extends StatelessWidget {
  const ColorPalettes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appBlackColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appGreyColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appRedPriColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appWhiteColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appRedErrorColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: appGreenSuccessColor,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
