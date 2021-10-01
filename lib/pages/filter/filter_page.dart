// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/color_palettes.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/price_range_slider.dart';
import 'package:flutter_ecommerce_app/reuseable/product_category_name.dart';
import 'package:flutter_ecommerce_app/reuseable/product_sizes.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: appBlackColor,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText.headingThree("Filter",),
            SizedBox(
              width: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: AppText.headingThree("Price range"),
            ),
            PriceRangeWidget(),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: AppText.headingThree("Colors"),
            ),
            ColorPalettes(),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: AppText.headingThree("Sizes"),
            ),
            ProductSizes(),
            Padding(
              padding: const EdgeInsets.only(left: 12, top: 12),
              child: AppText.headingThree("Category"),
            ),
            ProductCategoryName(),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ListTile(
                title: AppText.headingThree("Brand"),
                subtitle: AppText.body("adidas, Jack & Jones, etc."),
                trailing: IconButton(
                    onPressed: () {}, icon: Icon(Icons.chevron_right_sharp)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AppButton.outline(title: "Discard"),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: AppButton(title: "Apply"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
