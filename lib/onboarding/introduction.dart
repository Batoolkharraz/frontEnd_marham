import 'package:flutter/material.dart';
import 'package:flutter_application_4/Auth/signup/signup.dart';
import 'package:flutter_application_4/onboarding/intro_screen1.dart';
import 'package:flutter_application_4/onboarding/intro_screen2.dart';
import 'package:flutter_application_4/onboarding/intro_screen3.dart';
import 'package:flutter_application_4/onboarding/intro_screen4.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  // to keep track of which page we are
  PageController _controller = PageController();

  // keep track if we are at the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Wrap your PageView and SmoothPageIndicator in a Column
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            children: [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text('skip',
                        style: TextStyle(fontSize: 27),)),

                //dot indicator
                SmoothPageIndicator(controller: _controller, count: 4),

                //next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return Signup();
                            }),
                          );
                        },
                        child: Text('done',
                        style: TextStyle(fontSize: 27),),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: Text('next',
                        style: TextStyle(fontSize: 27),),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
