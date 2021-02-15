import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/detailOrder.dart';
import 'package:delivery_app/widgets/orderListItem.dart';
import 'package:flutter/material.dart';

class CompleteOrderListScreen extends StatefulWidget {
  @override
  _CompleteOrderListScreenState createState() =>
      _CompleteOrderListScreenState();
}

class _CompleteOrderListScreenState extends State<CompleteOrderListScreen> {
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
              "Completed Orders",
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderDetailScreen(),
                            ));
                      },
                      child: OrderListItem(
                        screenSize: screenSize,
                      ),
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
