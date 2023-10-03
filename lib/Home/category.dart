import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final icon;
  final String categoryName;
  category({
    required this.icon,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
        width: 150.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
              color:Colors.white,
          boxShadow: [
            BoxShadow( 
              color: Colors.black26,// Shadow color
              offset: Offset(0, 5), // Offset of the shadow
              blurRadius: 6, // Blur radius
              spreadRadius: 2, // Spread radius
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 50.0,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                categoryName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}