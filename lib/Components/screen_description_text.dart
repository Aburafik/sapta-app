import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class ScreenDescriptionTextComponent extends StatelessWidget {
  ScreenDescriptionTextComponent({Key? key, this.subtitle, this.title})
      : super(key: key);

  String? title;
  String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Text(
            title!,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle!,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(color: GREY_COLOR_75),
          ),
        ],
      ),
    );
  }
}
