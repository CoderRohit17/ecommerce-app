// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PopUpWindow extends StatelessWidget {
  final double height;
  final double width;
  const PopUpWindow({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          MaterialButton(
            onPressed: () {},
            child: Text("Add to favorited"),
          ),
          Divider(
            thickness: 1,
          ),
          MaterialButton(
            onPressed: () {},
            child: Text("Delete from the list"),
          ),
        ],
      ),
    );
  }
}
