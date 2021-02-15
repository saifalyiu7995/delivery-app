import 'package:flutter/material.dart';

class TextInput_widget extends StatelessWidget {
  TextInputType keyboardType;
  String labelText;
  bool obsecureText;
  String validationWarning;
  TextEditingController controller;
  TextInputAction action;
  String txtType;

  TextInput_widget(
      {Key key,
      this.keyboardType,
      this.labelText,
      this.obsecureText,
      this.validationWarning,
      this.controller,
      this.action,
      this.txtType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: TextFormField(
        controller: controller,
        obscureText: obsecureText,
        textInputAction: action,
        maxLength: txtType == "phone" ? 11 : 255,
        buildCounter: (BuildContext context,
                {int currentLength, int maxLength, bool isFocused}) =>
            null,
        decoration: new InputDecoration(
          labelText: labelText,
          fillColor: Colors.white,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: new BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return validationWarning;
          } else {
            if (txtType == "email") {
              if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(val)) {
                return "Email Not Valid";
              }
            } else if (txtType == "password") {
              if (val.length < 6) {
                return "Password must be 6 characters long";
              }
            } else if (txtType == "name") {
              if (val.length < 3) {
                return "Input must be 3 characters long";
              }
            } else if (txtType == "phone") {
              if (val.length < 11) {
                return "Invalid Number";
              }
            } else {
              return null;
            }
          }
        },
        keyboardType: keyboardType,
        style: new TextStyle(
            fontFamily: "sfroundbold",
            fontSize: 17,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
