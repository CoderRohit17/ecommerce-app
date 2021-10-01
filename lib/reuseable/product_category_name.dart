// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ProductCategoryName extends StatelessWidget {
  const ProductCategoryName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Center(
              child: AppText.subheading("All"),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Center(
              child: AppText.subheading("Women"),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Center(
              child: AppText.subheading("Men"),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Center(
              child: AppText.subheading("Kids"),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 100,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
            ),
            child: Center(
              child: AppText.subheading("Girls"),
            ),
          ),
        ),
      ],
    );
  }
}
