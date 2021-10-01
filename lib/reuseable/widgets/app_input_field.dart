import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/reuseable/my_colors.dart';

class AppInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? traillingTapped;
  final bool password;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  AppInputField(
      {Key? key,
      required this.controller,
      required this.placeholder,
      this.leading,
      this.trailing,
      this.traillingTapped,
      this.password = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      style: const TextStyle(height: 1),
      decoration: InputDecoration(
        label: Text(placeholder),
        prefixIcon: leading,
        suffixIcon: trailing != null
            ? GestureDetector(
                child: trailing,
                onTap: traillingTapped,
              )
            : null,
        hintText: placeholder,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: Colors.grey[200],
        border: circularBorder.copyWith(
          borderSide: const BorderSide(
            color: Color(0xffeeeeee),
          ),
        ),
        errorBorder: circularBorder.copyWith(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
        focusedBorder: circularBorder.copyWith(
          borderSide: const BorderSide(
            color: appRedPriColor,
          ),
        ),
        enabledBorder: circularBorder.copyWith(
          borderSide: const BorderSide(
            color: Color(0xffeeeeee),
          ),
        ),
      ),
    );
  }
}
