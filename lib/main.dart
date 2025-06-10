import 'package:flutter/material.dart';
import 'package:waddy/features/code_verfication/varfication_code.dart';
import 'package:waddy/features/code_verfication/vefication_success.dart';
import 'package:waddy/features/home_page.dart';
import 'package:waddy/features/login_signup/signup.dart';
import 'package:waddy/features/onboarding/onboarding_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
       fontFamily: "Poppins",
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white
        )
      ),
      home: Onboarding1(),
    );
  }
}

