import 'package:delivery_app/common.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  Color btnColor, textColor, shaddowColor;
  String btnText;
  Function ontap;

  RoundedButton({
    @required this.btnColor,
    @required this.btnText,
    @required this.shaddowColor,
    @required this.textColor,
    @required this.ontap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return InkWell(
      hoverColor: Colors.white,
      onTap: ontap ?? () {},
      child: Center(
        child: Container(
          width: screenSize.width * 0.85,
          height: screenSize.height * 0.07,
          decoration: BoxDecoration(
              color: btnColor ?? Common.appColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                    color: shaddowColor.withOpacity(0.35) ??
                        Common.appColor.withOpacity(0.35),
                    blurRadius: 10,
                    offset: Offset(0, 4))
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Center(
              child: Text(
                btnText ?? "TEXT",
                style: TextStyle(
                    fontSize: 17,
                    fontFamily: "sfroundbold",
                    fontWeight: FontWeight.w600,
                    color: textColor ?? Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
