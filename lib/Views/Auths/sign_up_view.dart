import 'package:flutter/material.dart';
import 'package:sabta_app/Components/screen_description_text.dart';
import 'package:sabta_app/Components/auth_options.dart';
import 'package:sabta_app/Components/sign_up_component.dart';

class SignUpVC extends StatelessWidget {
  const SignUpVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ScreenDescriptionTextComponent(
              title: "Creat account",
              subtitle: "Please enter the following data",
            ),
            const SignUpFormComponent(),
            AuthenticationsOptionsComponents(
              wrapperLeftText: "Already have an account?",
              wrapperRightText: "Login",
              rightWrapperTextOnTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, "/sign-in-view", (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
