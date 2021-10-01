import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class AppIconButton extends StatelessWidget {
  final void Function()? onTap;
  final Icon icon;
  final bool isSelected;
  final bool isDisable;
  final bool isAddBtn;

  const AppIconButton(
      {Key? key,
      this.onTap,
      required this.icon,
      this.isSelected = false,
      this.isDisable = true,
      required this.isAddBtn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAddBtn
        ? Center(
            child: Container(
              height: 45,
              width: 45,
              child: IconButton(
                icon: icon,
                onPressed: () {},
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: appBlackColor,
              ),
            ),
          )
        : isDisable
            ? Center(
                child: Container(
                  height: 45,
                  width: 45,
                  child: IconButton(
                    icon: icon,
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: appWhiteColor,
                  ),
                ),
              )
            : !isSelected
                ? Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: IconButton(
                        icon: icon,
                        onPressed: () {},
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: appRedPriColor,
                      ),
                    ),
                  )
                : Center(
                    child: Container(
                      height: 45,
                      width: 45,
                      child: IconButton(
                        icon: icon,
                        onPressed: () {},
                        color: Colors.red,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: appWhiteColor,
                      ),
                    ),
                  );
  }
}
