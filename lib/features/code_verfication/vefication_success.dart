import 'package:flutter/material.dart';
import 'package:waddy/features/home_page.dart';
import 'package:waddy/shared/components/widgets.dart';

class VeficationSuccess extends StatelessWidget {
  const VeficationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: onBoardingAppBar(backarrowFunction: () {}, leading: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Your Verification is done",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins-SemiBold.tff"),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              SizedBox(
                height: height * 0.3,
                child: Icon(
                  Icons.check_circle_outline_rounded,
                  color: Color(0xffFC4A1A),
                  size: 120,
                ),
              ),
              Text(
                "Welcome to our family ",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Expanded(child: SizedBox(height: height * 0.25)),
              Row(
                children: [
                  Text(
                    "Checkout for our Guide!",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        decoration: TextDecoration.underline,
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          )
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              outlineButton(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                text: "Next",
                height: height,
                width: width,
              ),
              SizedBox(height: height * 0.02)
            ],
          ),
        ),
      ),
    );
  }
}
