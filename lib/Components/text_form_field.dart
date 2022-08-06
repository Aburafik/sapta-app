import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {Key? key,
      this.hintText,
      this.hasPreffix = false,
      this.prefixIcon,
      this.suffixIcon,
      this.hasSuffix = false,
      this.obscureText = false,
      this.onPressed})
      : super(key: key);
  String? hintText;
  IconData? prefixIcon;
  IconData? suffixIcon;
  bool hasPreffix = false;
  bool hasSuffix = false;
  bool obscureText = false;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      cursorColor: GREY_COLOR_50,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: hasPreffix
            ? Icon(
                prefixIcon,
                color: GREY_COLOR_20,
              )
            : null,
        suffixIcon: hasSuffix
            ? IconButton(
                splashColor: WHITE_COLOR,
                onPressed: onPressed,
                icon: Icon(
                  suffixIcon,
                  color: GREY_COLOR_20,
                ),
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: GREY_COLOR_20),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: GREY_COLOR_75),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
