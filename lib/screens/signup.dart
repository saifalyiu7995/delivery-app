import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/dashboard.dart';
import 'package:delivery_app/screens/login.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:delivery_app/widgets/roundedButton.dart';
import 'package:delivery_app/widgets/textInput.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Background(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height * 0.07,
                ),
                Text(
                  "Signup",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      fontFamily: "sfroundmedium"),
                ),
                SizedBox(
                  height: 20,
                ),
                Image(
                    height: screenSize.height * 0.22,
                    image: AssetImage("assets/images/signup.png")),
                SizedBox(
                  height: 20,
                ),
                TextInput_widget(
                  labelText: "Name",
                  validationWarning: "Email cannot be empty",
                  keyboardType: TextInputType.emailAddress,
                  obsecureText: false,
                  txtType: "email",
                  action: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                TextInput_widget(
                  labelText: "Email",
                  validationWarning: "Email cannot be empty",
                  keyboardType: TextInputType.emailAddress,
                  obsecureText: false,
                  txtType: "email",
                  action: TextInputAction.next,
                ),
                SizedBox(
                  height: 20,
                ),
                TextInput_widget(
                  labelText: "Password",
                  validationWarning: "Password cannot be empty",
                  keyboardType: TextInputType.visiblePassword,
                  obsecureText: true,
                  action: TextInputAction.next,
                  txtType: "password",
                ),
                SizedBox(
                  height: 20,
                ),
                TextInput_widget(
                  labelText: "Confirm Password",
                  validationWarning: "Password cannot be empty",
                  keyboardType: TextInputType.visiblePassword,
                  obsecureText: true,
                  action: TextInputAction.next,
                  txtType: "password",
                ),
                SizedBox(
                  height: screenSize.height * 0.05,
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
                            builder: (context) => DashboardScreen(),
                          ));
                    }),
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: RichText(
                    text: TextSpan(
                      text: "Already have an account?",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: "sfroundmedium"),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Login.',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Common.appColor,
                                fontFamily: "sfroundbold")),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
