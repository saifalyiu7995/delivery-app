import 'package:delivery_app/common.dart';
import 'package:flutter/material.dart';

class OrderListItem extends StatelessWidget {
  String name;
  String image;
  String qty;
  final Size screenSize;
  OrderListItem(
      {Key key, @required this.screenSize, this.image, this.name, this.qty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenSize.height * 0.12,
      width: screenSize.width * 0.9,
      decoration: BoxDecoration(
          color: Color(0xffF2F3F7),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color(0xffBECDE2), offset: Offset(6, 6), blurRadius: 8),
            BoxShadow(
                color: Color(0xffffffff),
                offset: Offset(-6, -6),
                blurRadius: 16),
          ]),
      child: Stack(
        children: [
          Positioned(
            top: -20,
            left: -20,
            child: Opacity(
              opacity: 0.5,
              child: Image(
                height: 85,
                width: 85,
                image: AssetImage(image ?? "assets/images/circle.png"),
              ),
            ),
          ),
          // Positioned(
          //   bottom: -20,
          //   right: -20,
          //   child: Image(
          //     height: 85,
          //     width: 85,
          //     image: AssetImage(image ?? "assets/images/circle.png"),
          //   ),
          // ),
          // Positioned(
          //   bottom: 40,
          //   right: 25,
          //   child: Image(
          //     height: 35,
          //     width: 35,
          //     image: AssetImage(image ?? "assets/images/circle.png"),
          //   ),
          // ),
          Positioned(
            bottom: -10,
            left: 220,
            child: Image(
              height: 40,
              width: 40,
              image: AssetImage(image ?? "assets/images/box.png"),
            ),
          ),
          Positioned(
            bottom: -10,
            left: 260,
            child: Image(
              height: 50,
              width: 50,
              image: AssetImage(image ?? "assets/images/box.png"),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? "Alex Jordan",
                  style: TextStyle(
                    color: Color(0xff262F56),
                    fontFamily: "sfroundbold",
                    fontSize: 24,
                  ),
                ),
                Text(
                  "0345-199-4525",
                  style: TextStyle(
                    color: Color(0xff262F56),
                    fontFamily: "sfroundbold",
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: Text(
                    name ??
                        "Huse 8, 24th Street Defence Phase V, Karachi, Pakistan.",
                    style: TextStyle(
                      color: Common.appColor,
                      fontFamily: "sfroundbold",
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
