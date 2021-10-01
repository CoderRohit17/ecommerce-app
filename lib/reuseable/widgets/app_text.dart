// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/text_styles.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AppText.headingOne(this.text) : style = heading1Style;
  const AppText.headingTwo(this.text) : style = heading2Style;
  const AppText.headingThree(this.text) : style = heading3Style;
  const AppText.headline(this.text) : style = headingLineStyle;
  const AppText.subheading(this.text) : style = subHeadingStyle;
  const AppText.caption(this.text) : style = captionStyle;
  const AppText.bodyStyle(this.text) : style = bodyStyle;

  AppText.body(this.text, {Color color = appGreyColor})
      : style = bodyStyle.copyWith(color: color);

  const AppText({
    Key? key,
    required this.text,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
