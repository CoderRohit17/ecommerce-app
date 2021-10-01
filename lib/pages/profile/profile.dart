// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: AppText.headingOne("My Profiles"),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/image1.png"),
                radius: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Matilda Brown",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    "matildabrown1131@gmail.com",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          ListTile(
            title: Text(
              "My Orders",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "Already have 12 orders",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
          ListTile(
            title: Text(
              "Shipping Address",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "3 Addresses",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
          ListTile(
            title: Text(
              "Payment Methods",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "Visa **34",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
          ListTile(
            title: Text(
              "Promocodes",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "You have special promocodes",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
          ListTile(
            title: Text(
              "My Reviews",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "Reviews for 4 items",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              "Notification, password",
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
