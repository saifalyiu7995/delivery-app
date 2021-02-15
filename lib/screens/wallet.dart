import 'package:delivery_app/common.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:delivery_app/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xffeaeaea),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Center(
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                color: Common.appColor,
                                fontFamily: "sfroundmedium",
                                fontWeight: FontWeight.bold,
                                wordSpacing: 1,
                                letterSpacing: 1,
                                fontSize: 34),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.06,
                      ),
                      Container(
                        height: screenSize.height * 0.35,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment(0.6,
                                  0), // 10% of the width, so there are ten blinds.
                              colors: [
                                const Color(0xff9E9E9E).withOpacity(0.1),
                                const Color(0xffFFFFFF)
                              ], // red to yellow
                            ),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xff9E9E9E).withOpacity(0.4),
                                  offset: Offset(6, 5),
                                  blurRadius: 10),
                              BoxShadow(
                                  color: Color(0xffFFFFFF).withOpacity(.8),
                                  offset: Offset(-6, -6),
                                  blurRadius: 10),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Container(
                            height: screenSize.height * 0.2,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment(0.6,
                                      0), // 10% of the width, so there are ten blinds.
                                  colors: [
                                    const Color(0xff9E9E9E).withOpacity(0.1),
                                    const Color(0xffFFFFFF)
                                  ], // red to yellow
                                ),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff9E9E9E).withOpacity(0.4),
                                      offset: Offset(6, 5),
                                      blurRadius: 10),
                                  BoxShadow(
                                      color: Color(0xffFFFFFF).withOpacity(.8),
                                      offset: Offset(-6, -6),
                                      blurRadius: 10),
                                ]),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "PKR",
                                    style: TextStyle(
                                        color: Color(0xff262F56),
                                        fontFamily: "sfroundbold",
                                        fontSize: 19),
                                  ),
                                  Text(
                                    "243.00",
                                    style: TextStyle(
                                        color: Common.appColor,
                                        fontFamily: "sfroundbold",
                                        fontSize: 36),
                                  ),
                                  Text(
                                    DateFormat('dd-MM-yyyy')
                                        .format(DateTime.now())
                                        .toString(),
                                    style: TextStyle(
                                        color: Color(0xff262F56),
                                        fontFamily: "sfroundbold",
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                      ),
                      SizedBox(
                        width: screenSize.width * 0.8,
                        child: Text(
                          "Your total earnnng of the month, You can withdrw any time. Amount must be PKR 200 or more.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xffB6BBC1),
                              fontFamily: "sfroundbold",
                              fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.12,
                      ),
                      RoundedButton(
                          btnColor: Common.appColor,
                          btnText: "WITHDRAW",
                          shaddowColor: Common.appColor,
                          textColor: Colors.white,
                          ontap: () {}),
                    ]))));
  }
}
