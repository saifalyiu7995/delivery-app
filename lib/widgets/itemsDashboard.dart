import 'package:delivery_app/common.dart';
import 'package:flutter/material.dart';

class ItemsDashboard extends StatelessWidget {
  String name;
  String image;
  String qty;
  final Size screenSize;
  ItemsDashboard(
      {Key key, @required this.screenSize, this.image, this.name, this.qty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 25, left: 15, bottom: 5, right: 15),
              height: screenSize.height * 0.12,
              width: screenSize.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffBECDE2),
                        offset: Offset(6, 6),
                        blurRadius: 8),
                    BoxShadow(
                        color: Color(0xffF4F4F4).withOpacity(.2),
                        offset: Offset(-6, -6),
                        blurRadius: 16),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(-0.3, 0),
                      child: Text(
                        qty ?? "6",
                        style: TextStyle(
                          color: Common.appColor,
                          fontFamily: "sfroundbold",
                          fontSize: 26,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        name ?? "New Orders",
                        style: TextStyle(
                          color: Color(0xff262F56),
                          fontFamily: "sfroundbold",
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -7,
              right: 25,
              child: Image(
                height: 75,
                width: 75,
                image: AssetImage(image ?? "assets/images/new.png"),
              ),
            ),
          ],
        ));
  }
}
