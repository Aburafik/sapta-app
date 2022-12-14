import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';
import 'package:sabta_app/Components/custom_button.dart';
import 'package:sabta_app/Components/screen_description_text.dart';
import 'package:sabta_app/Components/text_form_field.dart';

class ForgotPasswordVC extends StatelessWidget {
  const ForgotPasswordVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FeatherIcons.lock,
              size: 50,
              color: PRIMARY_COLOR,
            ),
            ScreenDescriptionTextComponent(
              title: "Forget password",
              subtitle:
                  "Enter your email address you used to register, to reset your password",
            ),
            CustomTextFormField(
              hintText: "Enter email",
              hasPreffix: true,
              prefixIcon: FeatherIcons.mail,
            ),
            CustomButtonComponent(
              buttonText: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
