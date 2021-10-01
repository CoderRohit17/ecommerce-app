// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ImageView extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final bool onImageButton;
  final String imagePath;

  const ImageView(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      this.onImageButton = false,
      required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.fill)),
        ),
        Positioned(
          top: height / 1.3,
          left: 25,
          child: Column(
            children: [
              AppText(
                text: title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              onImageButton
                  ? SizedBox(
                      height: 50,
                      width: 150,
                      child: AppButton(title: "Check"),
                    )
                  : Text(""),
            ],
          ),
        ),
      ],
    );
  }
}
