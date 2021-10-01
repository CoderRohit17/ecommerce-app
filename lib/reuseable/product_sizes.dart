// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ProductSizes extends StatelessWidget {
  const ProductSizes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        children: [
          Wrap(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("XS"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("S"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("M"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("L"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("XL"),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(right: 5, left: 15, top: 10),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: AppText.subheading("XXL"),
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
          ),
          ListTile(
            dense: true,
            title: AppText.bodyStyle("Size info"),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_rounded),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              title: "add to cart".toUpperCase(),
            ),
          ),
        ],
      ),
    );
  }
}
