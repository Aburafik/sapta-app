import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class CustomButtonComponent extends StatelessWidget {
  CustomButtonComponent(
      {Key? key, this.hasIcon = false, this.icon, this.buttonText})
      : super(key: key);
  bool hasIcon = false;
  IconData? icon;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: hasIcon ? WHITE_COLOR : PRIMARY_COLOR),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            hasIcon ? Icon(icon) : Wrap(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(
                buttonText!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: hasIcon ? GREY_COLOR_20 : WHITE_COLOR),
              ),
            ),
          ],
        ),
      ),
    );
  }
}