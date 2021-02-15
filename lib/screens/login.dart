import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/signup.dart';
import 'package:delivery_app/screens/trackCustomer.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:delivery_app/widgets/roundedButton.dart';
import 'package:delivery_app/widgets/textInput.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            children: [
              SizedBox(
                height: screenSize.height * 0.07,
              ),
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    fontFamily: "sfroundmedium"),
              ),
              Image(
                  height: screenSize.height * 0.4,
                  image: AssetImage("assets/images/login.png")),
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
                height: screenSize.height * 0.1,
              ),
              RoundedButton(
                  btnColor: Common.appColor,
                  btnText: "LOGIN",
                  shaddowColor: Common.appColor,
                  textColor: Colors.white,
                  ontap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackCustomerLocation(),
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
                        builder: (context) => SignupScreen(),
                      ));
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontFamily: "sfroundmedium"),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Sign up.',
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
              SizedBox(
                height: screenSize.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
