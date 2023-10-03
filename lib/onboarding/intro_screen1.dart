import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What is New in Our App?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.network(
          'https://lottie.host/25ed7d93-96ce-4fab-bb9c-5b1b9c7ae536/0LFDbvc2mn.json'),
            
          ],
        ),
      ),
    );
  }
}
