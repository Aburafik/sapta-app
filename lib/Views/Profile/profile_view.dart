import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';
import 'package:sabta_app/Components/user_profile_component.dart';

class ProfileVC extends StatelessWidget {
  const ProfileVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: GREY_COLOR_75,
                fontSize: 20,
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  UserProfileComponent(),
            Text(
              "My Account",
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            const MyAccountComponent(),
            const MyAccountComponent(),
          ],
        ),
      ),
    );
  }
}

class MyAccountComponent extends StatelessWidget {
  const MyAccountComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: cardDecorator(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(FeatherIcons.bell),
                    Text("Notifications"),
                  ],
                ),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(FeatherIcons.mapPin),
                    Text("Tasks Remainder"),
                  ],
                ),
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(FontAwesomeIcons.addressCard),
                    Text("Address"),
                  ],
                ),
                Icon(Icons.arrow_circle_right),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

RoundedRectangleBorder cardDecorator() =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
