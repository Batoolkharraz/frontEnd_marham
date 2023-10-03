import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter_application_4/Home/homePage.dart';
import 'package:flutter_application_4/onboarding/introduction.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: SingleChildScrollView(
        child: Column(children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/pic4.jpg'),
          ),
          SizedBox(height: 10,),
          const Text(
            'You are in safe hands',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      backgroundColor: Colors.blue,
      nextScreen: Introduction(),
      splashIconSize: 300,
      duration: 2000,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
