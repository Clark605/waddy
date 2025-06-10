import 'package:flutter/material.dart';
import 'package:waddy/features/login_signup/signup.dart';
import 'package:waddy/shared/components/widgets.dart';

class IndicatorDot extends StatelessWidget {
  final bool isActive;

  const IndicatorDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      height: 8.0,
      width: isActive ? 16.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffFC4A1A) : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboarding1 extends StatefulWidget {
  const Onboarding1({super.key});

  @override
  State<Onboarding1> createState() => _Onboarding1State();
}

class _Onboarding1State extends State<Onboarding1> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage
          ? IndicatorDot(isActive: true)
          : IndicatorDot(isActive: false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/Logo.png"),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Color(0xffFc4A1A), fontSize: 18),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: PageView(
              controller: _pageController,
              physics: ClampingScrollPhysics(),
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Column(
                  children: [
                    Container(
                      width: width,
                      height: 265,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onboarding1.jpg")),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Explore the world",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Discover amazing destinations and create unforgettable memories with Waddy App",
                      style: TextStyle(
                          fontSize: 17.4, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: width,
                      height: 265,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onboarding2.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Features",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.cases_rounded,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Complete Travel Package option with various types !",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.gps_fixed_rounded,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Accurate Information about Destinations you might visit",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.task_alt_outlined,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            "Plan and Reserve various Activates with transportation options as you prefer ",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: width,
                      height: 265,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/onboarding3.jpg"),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      "Discover your next Adventure",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.task_alt_outlined,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Personalized Travel Plans",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Medium.ttf",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Customized itineraries just for you",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Light.ttf",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.access_alarm_outlined,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Exclusive Deals",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Medium.ttf",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Special offers and last-minute deals",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Light.ttf",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 46,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffFFCBC1),
                          ),
                          child: Icon(
                            Icons.headset_outlined,
                            color: Color(0xffFC4A1A),
                            size: 30,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "24/7 Travel Support",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Medium.ttf",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Help whenever you need it",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Poppins-Light.ttf",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    outlineButton(
                        function: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        text: "Get Started",
                        height: height,
                        width: width)
                  ],
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
            SizedBox(
              height: height * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
