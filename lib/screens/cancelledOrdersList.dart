import 'package:delivery_app/common.dart';
import 'package:delivery_app/widgets/orderListItem.dart';
import 'package:flutter/material.dart';

class CancelOrderListScreen extends StatefulWidget {
  @override
  _CancelOrderListScreenState createState() => _CancelOrderListScreenState();
}

class _CancelOrderListScreenState extends State<CancelOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF2F3F7),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cancel Orders",
              style: TextStyle(
                  color: Common.appColor,
                  fontFamily: "sfroundbold",
                  fontSize: 24),
            ),
            SizedBox(
              height: screenSize.height * 0.01,
            ),
            SingleChildScrollView(
              child: Container(
                height: screenSize.height * 0.88,
                width: screenSize.width,
                child: ListView.builder(
                  itemCount: 11,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                        top: 10, left: 15, bottom: 10, right: 15),
                    child: OrderListItem(
                      screenSize: screenSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
