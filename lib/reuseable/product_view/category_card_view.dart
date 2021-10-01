// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class CategoryViewCard extends StatelessWidget {
  final String title;
  const CategoryViewCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
              ),
            ]),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: AppText.headingTwo(title.toString()),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 2.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/tshirt.jpg",
                      ),
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ],
        ));
  }
}
