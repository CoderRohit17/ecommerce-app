import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class AppDropDown extends StatelessWidget {
  final Widget? trailing;
  final String title;
  final void Function()? onTap;
  final bool isDroped;
  final Color btnBackColor;

  const AppDropDown(
      {Key? key,
      this.trailing,
      required this.title,
      this.onTap,
      this.isDroped = false,
      required this.btnBackColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 120,
        decoration: BoxDecoration(
          color: btnBackColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: appRedPriColor, width: 1),
        ),
        child: !isDroped
            ? Center(
                child: btnBackColor == Colors.white
                    ? Text(
                        title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      )
                    : Text(
                        title,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
              )
            : Center(
                child: ListTile(
                  title: Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  trailing: trailing,
                ),
              ),
      ),
    );
  }
}
