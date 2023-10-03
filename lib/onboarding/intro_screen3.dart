import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage3 extends StatelessWidget {
  const IntroPage3
({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Book The Appointment that suits YOU',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
          Lottie.network(
        'https://lottie.host/f536471f-e18f-448f-921e-e8a315c5fca3/ZZ3BMFW1U1.json'),
        ],
      ),

    );
  }
}