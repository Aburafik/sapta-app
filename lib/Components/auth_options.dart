import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';
import 'package:sabta_app/Components/custom_button.dart';

class AuthenticationsOptionsComponents extends StatelessWidget {
  const AuthenticationsOptionsComponents({
    Key? key,
    this.faceBookAuthButtonText,
    this.googleAuthButtonText,
    this.wrapperLeftText,
    this.wrapperRightText,
    this.rightWrapperTextOnTap,
  }) : super(key: key);

  final String? googleAuthButtonText;
  final String? faceBookAuthButtonText;

  final String? wrapperLeftText;
  final String? wrapperRightText;
  final Function()? rightWrapperTextOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButtonComponent(
          hasIcon: true,
          iconColor: Colors.redAccent,
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
              wrapperLeftText!,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            InkWell(
              onTap: rightWrapperTextOnTap,
              child: Text(
                wrapperRightText!,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: PRIMARY_COLOR),
              ),
            )
          ],
        ),
      ],
    );
  }
}
