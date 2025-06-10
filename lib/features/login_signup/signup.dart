import 'package:flutter/material.dart';
import 'package:waddy/features/code_verfication/varfication_code.dart';
import 'package:waddy/shared/components/widgets.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: onBoardingAppBar(
        backarrowFunction: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Text("Email Address or Phone Number"),
                SizedBox(
                  height: height * 0.007,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.grey,
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: "Ex: hgjhjhjk@gmail.com",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text("Password"),
                SizedBox(
                  height: height * 0.007,
                ),
                TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    prefixIcon: Icon(Icons.lock_outline_rounded),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined)),
                    hintText: "Your Password",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                              color: Color(0xffFC4A1A),
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                outlineButton(
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  VarficationCode(onCompleted: (code) {})));
                    },
                    text: "Sign up",
                    width: width,
                    height: height),
                SizedBox(
                  height: height * 0.02,
                ),
                Row(
                  children: [
                    Text(
                      "Do you have an account Already? ",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    GestureDetector(
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            color: Color(0xffFC4A1A),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Divider(color: Color(0xff000000)),
                    )),
                    Text("OR"),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Divider(color: Color(0xff000000)),
                    ))
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize:
                          WidgetStateProperty.all(Size(width, height * 0.06)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                        size: 38,
                      ),
                      Expanded(
                        child: Text(
                          "Continue with Facebook",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins-Medium",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize:
                          WidgetStateProperty.all(Size(width, height * 0.06)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.red,
                        size: 38,
                      ),
                      Expanded(
                        child: Text(
                          "Continue with Google",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins-Medium",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      fixedSize:
                          WidgetStateProperty.all(Size(width, height * 0.06)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.apple,
                        color: Colors.black,
                        size: 45,
                      ),
                      Expanded(
                        child: Text(
                          "Continue with Apple",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Poppins-Medium",
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                Center(
                    child: Text(
                  "By signing up, you agree to our",
                  style: TextStyle(fontSize: 10),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        child: Text(
                      "Terms of Service",
                      style: TextStyle(
                          color: Color(0xffFC4A1A),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Text(
                      " and ",
                      style: TextStyle(fontSize: 10),
                    ),
                    GestureDetector(
                        child: Text(
                      "Privacy Policy",
                      style: TextStyle(
                          color: Color(0xffFC4A1A),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
