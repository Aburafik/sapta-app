import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:sabta_app/Components/custom_button.dart';
import 'package:sabta_app/Components/text_form_field.dart';

class SignUpFormComponent extends StatefulWidget {
  const SignUpFormComponent({Key? key}) : super(key: key);

  @override
  State<SignUpFormComponent> createState() => _SignUpFormComponentState();
}

class _SignUpFormComponentState extends State<SignUpFormComponent> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomTextFormField(
            hintText: "Full name",
            hasPreffix: true,
            prefixIcon: FeatherIcons.user,
          ),
        ),
        CustomTextFormField(
          hintText: "Enter email",
          hasPreffix: true,
          prefixIcon: FeatherIcons.mail,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: CustomTextFormField(
            hintText: "Enter password",
            obscureText: isVisible,
            hasSuffix: true,
            suffixIcon: isVisible ? Icons.visibility_off : Icons.visibility,
            hasPreffix: true,
            prefixIcon: FeatherIcons.lock,
            onPressed: () {
              setState(
                () {
                  isVisible = !isVisible;
                },
              );
            },
          ),
        ),
        CustomTextFormField(
          hintText: "Phone Number",
          hasPreffix: true,
          prefixIcon: FeatherIcons.phone,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: CustomButtonComponent(
            buttonText: "Create account",
          ),
        ),
        Row(
          children: const [
            Expanded(
                child: Divider(
              thickness: 1,
            )),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("OR"),
            ),
            Expanded(
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
