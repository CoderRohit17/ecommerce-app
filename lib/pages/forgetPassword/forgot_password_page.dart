// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_input_field.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                AppText.headingOne("Forgot password"),
                SizedBox(
                  height: 50,
                ),
                AppText.bodyStyle(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                ),
                SizedBox(
                  height: 10,
                ),
                AppInputField(
                  controller: TextEditingController(),
                  placeholder: "Email",
                ),
                SizedBox(
                  height: 50,
                ),
                AppButton(title: "SEND")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
