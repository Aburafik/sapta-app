import 'package:flutter/material.dart';
import 'package:sabta_app/Views/Auths/forgot_password_view.dart';
import 'package:sabta_app/Views/Auths/sign_in_view.dart';
import 'package:sabta_app/Views/Auths/sign_up_view.dart';
import 'package:sabta_app/Views/Notifications/notifications.dart';
import 'package:sabta_app/Views/Onboarding/onboarding_view.dart';
import 'package:sabta_app/Views/Onboarding/splash_screen.dart';
import 'package:sabta_app/Views/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF4F4F4),
        
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
        "/onboarding-view": (context) => const OnboardingView(),
        "/sign-in-view": (context) => const SignInVC(),
        "/sign-up-view": (context) => const SignUpVC(),
        "/reset-password-view": (context) => const ForgotPasswordVC(),
        "/notification-view": (context) => const Notifications(),
        "/home-page": (context) =>const HomePage()
      },
    );
  }
}
