import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/detailOrder.dart';
import 'package:delivery_app/screens/login.dart';
import 'package:delivery_app/screens/profile.dart';
import 'package:delivery_app/screens/signup.dart';
import 'package:delivery_app/screens/trackCustomer.dart';
import 'package:delivery_app/screens/wallet.dart';
import 'package:delivery_app/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: "SFpro",
        backgroundColor: Colors.white,

        accentColor: Common.appColor,
        primaryColor: Common.appColor,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen(),
    );
  }
}
