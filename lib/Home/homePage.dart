// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home/category.dart';
import 'package:flutter_application_4/Home/doctor.dart';
import 'package:flutter_application_4/doctors/doctors.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:http/http.dart' as http;

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List categories = [];
  List doctors = [];

  Future getCategories() async {
    var url = "https://marham-backend.onrender.com/category/";
    var response = await http.get(Uri.parse(url));
    var responceBody = response.body.toString();
    responceBody = responceBody.trim();
    responceBody = responceBody.substring(14, responceBody.length - 1);
    var cat = jsonDecode(responceBody);

    setState(() {
      categories.addAll(cat);
    });
  }

  Future<String> getCategory(String catId) async {
    var url = "https://marham-backend.onrender.com/category/${catId}";
    var response = await http.get(Uri.parse(url));
    var responceBody = response.body.toString();
    responceBody = responceBody.trim();
    responceBody = responceBody.substring(12, responceBody.length - 1);
    var cat = jsonDecode(responceBody);

    return cat['name'];
  }

  Future getDoctor() async {
    var url = "https://marham-backend.onrender.com/doctor/";
    var response = await http.get(Uri.parse(url));
    var responceBody = response.body.toString();
    responceBody = responceBody.trim();
    responceBody = responceBody.substring(11, responceBody.length - 1);
    var doc = jsonDecode(responceBody);
    
    setState(() {
      //print(getCategory(doc[0]['categoryId']));
      doctors.addAll(doc);
    });
  }

void navigateToNextPageWithCategory(String categoryId) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => DoctorsPage(categoryId: categoryId),
    ),
  );
}

  @override
  void initState() {
    // TODO: implement initState
    getCategories();
    //getCategory();
    getDoctor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8EEFA),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7),
          child: GNav(
              gap: 8,
              backgroundColor: Colors.white,
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Color(0xFF0561DD),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  textStyle: TextStyle(
                      fontSize: 20, fontFamily: 'Salsa', color: Colors.white),
                  iconSize: 35,
                  text: "Home",
                ),
                GButton(
                    icon: Icons.person,
                    textStyle: TextStyle(
                        fontSize: 20, fontFamily: 'Salsa', color: Colors.white),
                    iconSize: 35,
                    text: "Personal Account"),
                GButton(
                    icon: Icons.event,
                    textStyle: TextStyle(
                        fontSize: 20, fontFamily: 'Salsa', color: Colors.white),
                    iconSize: 35,
                    text: ("Appointments")),
              ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find Your',
                          style: TextStyle(fontSize: 25.0, fontFamily: 'Salsa'),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          ' Specialist',
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Salsa'),
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      margin: EdgeInsets.only(right: 5.0),
                      child: Row(
                        children: [
                          FaIcon(FontAwesomeIcons.search, size: 30.0),
                          SizedBox(width: 20.0),
                          FaIcon(
                            FontAwesomeIcons.commentDots,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.0),
///////////////////////////////////////////////////////////////////cards

              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF0561DD),
                  borderRadius:
                      BorderRadius.circular(29), // Set the border radius here
                ),
                padding: EdgeInsets.all(15),
                height: 260,
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Container(
                      color: Color(0xFF0561DD),
                      width: 280,
                      height: 250,
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text(
                            "Looking For Your derired doctor specialist?",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: 'Salsa'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Connect with trusted doctors \nfor expert medical guidance and care.",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      color: Color(0xFF0561DD),
                      width: 190,
                      height: 250,
                      child: Image.asset("assets/copy.png", fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),

              //category
              Container(
                margin: EdgeInsets.all(13),
                width: 500,
                child: Text(
                  "Categories",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25.0, fontFamily: 'Salsa'),
                ),
              ),
              Container(
                height: 130.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return category(
                          icon: '${categories[index]['image']['secure_url']}',
                          categoryName: '${categories[index]['name']}',
                          onTap: () => navigateToNextPageWithCategory('${categories[index]['_id']}'),);
                          
                    }),
              ),
              SizedBox(
                height: 25,
              ),
              //doc
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Avilable Doctor',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontFamily: 'Salsa')),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 335.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: doctors.length,
                    itemBuilder: (context, index) {
                      return FutureBuilder(
                      future: getCategory('${doctors[index]['categoryId']}'),
                      builder: (context, categorySnapshot) {
                        if (categorySnapshot.hasError) {
                          return Text('Error: ${categorySnapshot.error}');
                        } else {
                          return doctor(
                            doctorPic: '${doctors[index]['image']['secure_url']}',
                            doctorRate: '${doctors[index]['rate']}',
                            doctorName: '${doctors[index]['name']}',
                            doctorCat: categorySnapshot.data.toString(),
                          );
                        }
                      },
                    );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
