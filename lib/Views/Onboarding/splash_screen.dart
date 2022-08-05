import 'package:flutter/material.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WHITE_COLOR,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: 50,
              width: 50,
            ),
            Text("Sap'ta",style:Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 30,fontWeight: FontWeight.w900,color: PRIMARY_COLOR
            ))
          ],
        ),
      ),
    );
  }
}
