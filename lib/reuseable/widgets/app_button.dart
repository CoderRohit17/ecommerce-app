// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';
import 'package:flutter_ecommerce_app/reuseable/widgets/text_styles.dart';

class AppButton extends StatefulWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final Widget? leading;
  final bool outline;
  final void Function()? onTap;

  const AppButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.leading,
    this.outline = false,
    this.onTap,
  }) : super(key: key);

  const AppButton.outline({
    required this.title,
    this.onTap,
    this.leading,
  })  : disabled = false,
        busy = false,
        outline = true;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 48,
        decoration: !widget.outline
            ? BoxDecoration(
                color: !widget.disabled ? appRedPriColor : appGreyColor,
                borderRadius: BorderRadius.circular(25),
              )
            : BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: appRedPriColor, width: 1)),
        child: !widget.busy
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (widget.leading != null) widget.leading!,
                  if (widget.leading != null)
                    const SizedBox(
                      width: 5,
                    ),
                  Text(
                    widget.title,
                    style: bodyStyle.copyWith(
                        fontWeight:
                            !widget.outline ? FontWeight.bold : FontWeight.w400,
                        color: !widget.outline ? Colors.white : appRedPriColor),
                  )
                ],
              )
            : const Center(
                child: SizedBox(
                  height: 45,
                  width: 45,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(appWhiteColor),
                    strokeWidth: 4,
                  ),
                ),
              ),
      ),
    );
  }
}
