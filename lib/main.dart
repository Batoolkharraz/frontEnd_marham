import 'package:flutter/material.dart';
import 'package:flutter_application_4/Auth/Login/login.dart';
import 'package:flutter_application_4/Home/homePage.dart';
import 'package:flutter_application_4/onboarding/introduction.dart';
import 'package:flutter_application_4/splashScreen.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,//عند الدراور
      //home:splashScreen(),
      home:homePage(),
    );
}
}
