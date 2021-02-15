import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Widget child;

  Background({this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              width: size.height * 0.45,
              child: Image(image: AssetImage("assets/images/loginbg.gif"))),
          Positioned(
              bottom: 0,
              right: 0,
              width: size.height * 0.45,
              child: Image(image: AssetImage("assets/images/bg.png"))),
          child
        ],
      ),
    );
  }
}
