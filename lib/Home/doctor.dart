// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class doctor extends StatelessWidget {
  final String doctorPic;
  final String doctorRate;
  final String doctorName;
  final String doctorCat;
  doctor(
      {required this.doctorPic,
      required this.doctorRate,
      required this.doctorName,
      required this.doctorCat});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            //pic
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  doctorPic,
                  height: 200.0,
                  width: 200.0,
                ),
              ),
            ),
            //name
            Text(
              doctorName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //category
            Text(
              doctorCat,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //rate
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow[600],
                ),
                Text(
                  doctorRate,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 90.0,
                ),
                Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 250, 79, 57),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}