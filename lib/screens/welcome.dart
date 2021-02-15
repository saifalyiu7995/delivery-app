import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/login.dart';
import 'package:delivery_app/screens/signup.dart';
import 'package:delivery_app/widgets/roundedButton.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: screenSize.height * 0.03,
            ),
            RichText(
              text: TextSpan(
                text: "Welcome to\n",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 46,
                    fontFamily: "sfroundmedium"),
                children: <TextSpan>[
                  TextSpan(
                      text: 'G Deliveries',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 46,
                          letterSpacing: 1,
                          color: Colors.black,
                          fontFamily: "sfroundbold")),
                  TextSpan(
                      text: '.',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 52,
                          color: Common.appColor,
                          fontFamily: "sfroundbold")),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            Image(image: AssetImage("assets/images/welcom.gif")),
            SizedBox(
              height: screenSize.height * 0.06,
            ),
            RoundedButton(
                btnColor: Common.appColor,
                btnText: "LOGIN",
                shaddowColor: Common.appColor,
                textColor: Colors.white,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                }),
            SizedBox(
              height: screenSize.height * 0.02,
            ),
            RoundedButton(
                btnColor: Common.appColor,
                btnText: "SIGN UP",
                shaddowColor: Common.appColor,
                textColor: Colors.white,
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
