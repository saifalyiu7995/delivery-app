import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/dashboard.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:delivery_app/widgets/roundedButton.dart';
import 'package:delivery_app/widgets/textInput.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Background(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Center(
                              child: Text(
                                "Profile",
                                style: TextStyle(
                                    color: Common.appColor,
                                    fontFamily: "sfroundmedium",
                                    fontWeight: FontWeight.bold,
                                    wordSpacing: 1,
                                    letterSpacing: 1,
                                    fontSize: 24),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              height: screenSize.height * 0.3,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xffBECDE2),
                                        offset: Offset(6, 6),
                                        blurRadius: 16),
                                    BoxShadow(
                                        color:
                                            Color(0xffF4F4F4).withOpacity(.2),
                                        offset: Offset(-6, -6),
                                        blurRadius: 16),
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 75,
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          "https://pixinvent.com/materialize-material-design-admin-template/app-assets/images/user/12.jpg"),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.01,
                                  ),
                                  Text(
                                    "Alisa Cara",
                                    style: TextStyle(
                                        color: Common.appColor,
                                        fontFamily: "sfroundmedium",
                                        fontWeight: FontWeight.bold,
                                        wordSpacing: 1,
                                        letterSpacing: 1,
                                        fontSize: 22),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 14.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Completed",
                                                style: TextStyle(
                                                    color: Common.appColor,
                                                    fontFamily: "sfroundmedium",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                height:
                                                    screenSize.height * 0.01,
                                              ),
                                              Text(
                                                "17",
                                                style: TextStyle(
                                                    color: Color(0xff262F56),
                                                    fontFamily: "sfroundbold",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "New",
                                                style: TextStyle(
                                                    color: Common.appColor,
                                                    fontFamily: "sfroundmedium",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                height:
                                                    screenSize.height * 0.01,
                                              ),
                                              Text(
                                                "6",
                                                style: TextStyle(
                                                    color: Color(0xff262F56),
                                                    fontFamily: "sfroundbold",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 14.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Cancelled",
                                                style: TextStyle(
                                                    color: Common.appColor,
                                                    fontFamily: "sfroundmedium",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14),
                                              ),
                                              SizedBox(
                                                height:
                                                    screenSize.height * 0.01,
                                              ),
                                              Text(
                                                "13",
                                                style: TextStyle(
                                                    color: Color(0xff262F56),
                                                    fontFamily: "sfroundbold",
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenSize.height * 0.03,
                          ),
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
                            labelText: "Phone",
                            validationWarning: "Password cannot be empty",
                            keyboardType: TextInputType.number,
                            obsecureText: false,
                            action: TextInputAction.next,
                            txtType: "phone",
                          ),
                          SizedBox(
                            height: screenSize.height * 0.07,
                          ),
                          RoundedButton(
                              btnColor: Common.appColor,
                              btnText: "UPDATE",
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
                        ]
                        )
                        )
                        )
                        )
                        );
  }
}
