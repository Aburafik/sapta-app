import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:sabta_app/Components/Utils/color_themes.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color kDarkBlueColor = Color(0xFF053149);
    return Scaffold(
      body: OnBoardingSlider(
        indicatorAbove: true,
        finishButtonText: 'Get Started',
        onFinish: () => Navigator.pushNamedAndRemoveUntil(
            context, "/sign-in-view", (route) => false),
        finishButtonColor: PRIMARY_COLOR,
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(
            fontSize: 16,
            color: GREY_COLOR_20,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: const Text(
          'Login',
          style: TextStyle(
            fontSize: 16,
            color: GREY_COLOR_20,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailingFunction: () => Navigator.pushNamedAndRemoveUntil(
            context, "/sign-in-view", (route) => false),
        controllerColor: PRIMARY_COLOR,
        totalPage: 3,
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        background: [
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                'assets/images/logo2.png',
                // height: 200,
                // width: 200,
              ),
            ),
          ),
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                'assets/images/logo3.png',
               
              ),
            ),
          ),
          SizedBox(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
              ),
            ),
          ),
        ],
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Get Reward Points',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Collect and saperate your waste and get reward points while saving your planet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 480,
                ),
                Text(
                  'Easy to Communicate.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'You can easily make a request for your waste and we will get right to your door on time',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 460,
                ),
                Text(
                  'Scan QR Code!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kDarkBlueColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'A representative will recieve your order & confirm the available quantity, then he will scan your QR code to get rewarded points loaded in your wallet .',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
