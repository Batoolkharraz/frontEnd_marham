import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class IntroPage2 extends StatelessWidget {
  const IntroPage2
({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Hundreds of Choices to find the Right Doctor!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,),),
          Lottie.network(
        'https://lottie.host/a74d5719-516a-44b0-95bd-770e0570de51/u7IvnPfjP9.json'),
        ],
      ),

    );
  }
}