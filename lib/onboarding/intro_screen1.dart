import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(230, 21, 96, 225),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding:EdgeInsets.fromLTRB(0, 150, 0,0))
         

            
            
              ,ClipRRect(
  borderRadius: BorderRadius.circular(100.0),
  child: Container(
    // margin: EdgeInsets.fromLTRB(0, 80, 0, 100),
   padding: EdgeInsets.fromLTRB(0, 100, 0, 100),
   child:Column(
     children: [
       Image.asset('assets/page1.gif'),
      
      
            
     ],
   ) ,
      width: 550,
      color:Colors.white,
    ),
   
  ),
          SizedBox(height: 40,),
       Text(
              'What is New in Our App?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Salsa',
                color: Colors.white

              ),
            ),      
            
          ],
        ),
      ),
    );
  }
}
