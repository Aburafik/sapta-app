import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';
import 'package:sabta_app/Components/custom_button.dart';

class SignInOptionsComponents extends StatelessWidget {
  const SignInOptionsComponents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtonComponent(
          hasIcon: true,
          icon: FontAwesomeIcons.google,
          buttonText: "Continue with Google",
        ),
        CustomButtonComponent(
          hasIcon: true,
          icon: FontAwesomeIcons.facebook,
          buttonText: "Continue with Facebook",
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              "Not a member?",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text("Create account",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: PRIMARY_COLOR))
          ],
        ),
      ],
    );
  }
}
