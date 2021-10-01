import 'package:flutter/material.dart';

class SocialMediaBth extends StatelessWidget {
  final bool isGoogle;

  const SocialMediaBth({Key? key, required this.isGoogle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 92,
        width: 64,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: isGoogle
                ? const AssetImage("assets/images/google_logo.png")
                : const AssetImage("assets/images/facebook_logo.png"),
          ),
        ),
      ),
    );
  }
}
