import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';
import 'package:sabta_app/Components/my_accounts_components.dart';
import 'package:sabta_app/Components/user_profile_component.dart';
import 'package:sabta_app/Components/support_component.dart';

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
            const UserProfileComponent(),
            Text(
              "My Account",
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
            const MyAccountComponent(),
            const SupportComponent(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  Text("SignOut",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(fontSize: 16))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                moreText(text: "About Us", context: context),
                SizedBox(width: 10),
                moreText(text: "Privacy Policy", context: context),
                SizedBox(width: 10),
                moreText(text: "Terms Of Use", context: context),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text moreText({String, text, BuildContext? context}) => Text(
        text!,
        style: Theme.of(context!).textTheme.headline2!.copyWith(fontSize: 16),
      );
}


RoundedRectangleBorder cardDecorator() =>
    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
