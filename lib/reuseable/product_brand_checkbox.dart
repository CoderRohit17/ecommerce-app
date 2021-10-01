// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProductBrandCheckBox extends StatelessWidget {
  const ProductBrandCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ListTile(
        title: Text("Brand Name"),
        trailing: Checkbox(
          value: false,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
