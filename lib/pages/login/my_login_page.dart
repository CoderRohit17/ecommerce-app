// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_button.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_input_field.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_social_media_btn.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/app_text.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/ui_helpers.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                AppText.headingOne("Login"),
                SizedBox(
                  height: 50,
                ),
                AppInputField(
                  controller: TextEditingController(),
                  placeholder: "Email",
                ),
                SizedBox(
                  height: 10,
                ),
                AppInputField(
                  controller: TextEditingController(),
                  placeholder: "Password",
                  password: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    AppText.caption("Forgot your password?"),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.red,
                        ))
                  ],
                ),
                AppButton(title: "Login"),
                SizedBox(
                  height: 200,
                ),
                AppText.caption("Or login with social account"),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaBth(isGoogle: true),
                      horizontalSpaceMedium,
                      SocialMediaBth(isGoogle: false),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
