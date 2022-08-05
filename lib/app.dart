import 'package:flutter/material.dart';
import 'package:sabta_app/Views/Onboarding/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashScreen(),
      },
    );
  }
}
