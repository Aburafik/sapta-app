import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class HomeAppBarComponent extends StatelessWidget {
  const HomeAppBarComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              FeatherIcons.mapPin,
              size: 15,
              color: GREY_COLOR_50,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Kasoa",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: GREY_COLOR_50),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("User Name"),
            IconButton(
              onPressed: () {},
              icon: const Icon(FeatherIcons.bell),
            )
          ],
        )
      ],
    );
  }
}

    