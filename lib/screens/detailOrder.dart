import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/trackCustomer.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatefulWidget {
  @override
  _OrderDetailScreenState createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Background(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount:",
                            style: TextStyle(
                                color: Common.appColor,
                                fontSize: 22,
                                fontFamily: "sfroundbold"),
                          ),
                          Text(
                            "PKR 14230.00",
                            style: TextStyle(
                                color: Color(0xff262F56),
                                fontSize: 22,
                                fontFamily: "sfroundbold"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: screenSize.height * 0.23,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffBECDE2),
                                    offset: Offset(6, 6),
                                    blurRadius: 16),
                                BoxShadow(
                                    color: Color(0xffF4F4F4).withOpacity(.2),
                                    offset: Offset(-6, -6),
                                    blurRadius: 16),
                              ]),
                          child: Stack(
                            children: [
                              Image(
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/bg.png")),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Customer Name",
                                          style: TextStyle(
                                              color: Common.appColor,
                                              fontSize: 17,
                                              fontFamily: "sfroundbold"),
                                        ),
                                        Text(
                                          "Nida Yasir            ",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff262F56),
                                              fontSize: 17,
                                              fontFamily: "sfroundbold"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Contact Number",
                                          style: TextStyle(
                                              color: Common.appColor,
                                              fontSize: 17,
                                              fontFamily: "sfroundbold"),
                                        ),
                                        Text(
                                          "0345-1994525",
                                          style: TextStyle(
                                              color: Color(0xff262F56),
                                              fontSize: 16,
                                              fontFamily: "sfroundbold"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Products Qty",
                                          style: TextStyle(
                                              color: Common.appColor,
                                              fontSize: 17,
                                              fontFamily: "sfroundbold"),
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: Text(
                                            "12",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xff262F56),
                                                fontSize: 17,
                                                fontFamily: "sfroundbold"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Payment Method",
                                          style: TextStyle(
                                              color: Common.appColor,
                                              fontSize: 17,
                                              fontFamily: "sfroundbold"),
                                        ),
                                        SizedBox(
                                          width: 120,
                                          child: Text(
                                            "COD",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Color(0xff262F56),
                                                fontSize: 17,
                                                fontFamily: "sfroundbold"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Products",
                          style: TextStyle(
                              color: Common.appColor,
                              fontSize: 22,
                              fontFamily: "sfroundbold"),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15,
                        ),
                        child: Container(
                          height: screenSize.height * 0.35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffBECDE2),
                                    offset: Offset(6, 6),
                                    blurRadius: 16),
                                BoxShadow(
                                    color: Color(0xffF4F4F4).withOpacity(.2),
                                    offset: Offset(-6, -6),
                                    blurRadius: 16),
                              ]),
                          child: Stack(
                            children: [
                              Image(
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/images/bg.png")),
                              SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: DataTable(
                                  columns: const <DataColumn>[
                                    DataColumn(
                                      label: Text(
                                        'Product',
                                        style: TextStyle(
                                            fontFamily: "sfroundbold",
                                            fontSize: 18,
                                            color: Common.appColor),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Price',
                                        style: TextStyle(
                                            fontFamily: "sfroundbold",
                                            fontSize: 18,
                                            color: Common.appColor),
                                      ),
                                    ),
                                    DataColumn(
                                      label: Text(
                                        'Quantity',
                                        style: TextStyle(
                                            fontFamily: "sfroundbold",
                                            fontSize: 18,
                                            color: Common.appColor),
                                      ),
                                    ),
                                  ],
                                  rows: const <DataRow>[
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '1',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '3',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '2',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '1',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '7',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                    DataRow(
                                      cells: <DataCell>[
                                        DataCell(Text(
                                          'Nutella',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '630/-',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                        DataCell(Text(
                                          '12',
                                          style: TextStyle(
                                              fontFamily: "sfroundbold",
                                              fontSize: 17,
                                              color: Color(0xff262F56)),
                                        )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 0),
                          blurRadius: 10),
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  height: screenSize.height * 0.13,
                  width: double.infinity,
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
                            image: AssetImage("assets/images/circle.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -25,
                        right: -25,
                        child: Opacity(
                          opacity: 0.5,
                          child: Image(
                            height: 85,
                            width: 85,
                            image: AssetImage("assets/images/circle.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 125,
                        child: Opacity(
                          opacity: 0.5,
                          child: Image(
                            height: 45,
                            width: 45,
                            image: AssetImage("assets/images/box.png"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 170,
                        child: Opacity(
                          opacity: 0.5,
                          child: Image(
                            height: 35,
                            width: 35,
                            image: AssetImage("assets/images/box.png"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "STATUS:",
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 16,
                                      fontFamily: "sfroundbold"),
                                ),
                                Text(
                                  "PROCESSING",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: "sfroundbold"),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TrackCustomerLocation()));
                              },
                              child: Container(
                                width: screenSize.width * 0.55,
                                height: screenSize.height * 0.08,
                                decoration: BoxDecoration(
                                    color: Common.appColor,
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                          color:
                                              Common.appColor.withOpacity(0.25),
                                          blurRadius: 8,
                                          offset: Offset(0, 4))
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.location_on_rounded,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "TRACK NOW →",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontFamily: "sfroundbold",
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
