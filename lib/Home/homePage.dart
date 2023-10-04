import 'package:flutter/material.dart';
import 'package:flutter_application_4/Home/category.dart';
import 'package:flutter_application_4/Home/doctor.dart';
import 'package:lottie/lottie.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

final List _categories = [
  'chest ',
  'cat2',
  'cat1',
  'cat2',
  'cat1',
  'cat2',
  'cat1',
  'cat2'
];
final List _doctors = ['dr1', 'dr2', 'dr1', 'dr2', 'dr1', 'dr2'];

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFE8EEFA) ,
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
                    fontSize: 20,
                    fontFamily: 'Salsa',
                    color: Colors.white
                  ),
                  iconSize: 35,
                  text: "Home",
                ),
                GButton(
                    icon: Icons.person,
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Salsa',
                      color: Colors.white
                    ),
                    iconSize: 35,
                    text: "Personal Account"),
                GButton(
                    icon: Icons.event,
                    textStyle: TextStyle(fontSize: 20,
                    fontFamily: 'Salsa',
                    color: Colors.white),
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
                  padding: EdgeInsets.all(15),height: 260,
                 margin: EdgeInsets.only(left:10,right: 10),
                  
                  child:
                    Row(
                      children: [
                        Container(color: Color(0xFF0561DD),
                            width: 280,
                            height: 250,
                            padding: EdgeInsets.only(top:20),
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
                            SizedBox(height: 20,),
                            Text("Connect with trusted doctors \nfor expert medical guidance and care.",
                            style: TextStyle(
                              fontSize: 20
                              ,color: Colors.white
                            ),
                            )
                              ],
                            ),
                            ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(color: Color(0xFF0561DD), width:190, height: 250
                        ,
                        child: Image.asset("assets/copy.png",fit:BoxFit.cover),),
                      ],
                    ),
                  
                ),
            

              //category
             Container(margin: EdgeInsets.all(13),width: 500,child:
               Text(
                "Categories",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 25.0, fontFamily: 'Salsa'),
              )
              ,
              
             ),
              Container(
                height: 130.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return category(
                          icon: 'assets/tooth.png',
                          categoryName: _categories[index]);
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
                          fontFamily: 'Salsa'
                        )),
                    
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
                    itemCount: _categories.length,
                    itemBuilder: (context, index) {
                      return doctor(
                          doctorPic: 'assets/doctor2.jpg',
                          doctorRate: '5.0',
                          doctorName: 'doctorName',
                          doctorCat: 'doctorCat');
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
