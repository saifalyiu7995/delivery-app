import 'package:delivery_app/common.dart';
import 'package:delivery_app/screens/cancelledOrdersList.dart';
import 'package:delivery_app/screens/completedOrderList.dart';
import 'package:delivery_app/screens/orderlist.dart';
import 'package:delivery_app/screens/pendingOrdersList.dart';
import 'package:delivery_app/screens/profile.dart';
import 'package:delivery_app/screens/wallet.dart';
import 'package:delivery_app/widgets/background.dart';
import 'package:delivery_app/widgets/dropMenu.dart';
import 'package:delivery_app/widgets/itemsDashboard.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
                    padding: const EdgeInsets.only(
                        top: 15.0, right: 18, left: 18, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(),
                                ));
                          },
                          child: Image(
                            image: AssetImage("assets/images/user.png"),
                            height: 25,
                            width: 25,
                          ),
                        ),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              color: Common.appColor,
                              fontFamily: "sfroundbold",
                              fontSize: 24),
                        ),
                        // Image(
                        //   image: AssetImage("assets/images/menu.png"),
                        //   height: 25,
                        //   width: 25,
                        // )
                        DropMenu(
                          icons: [
                            Icon(Icons.location_pin),
                            Icon(Icons.notifications_none_rounded),
                            Icon(Icons.exit_to_app_rounded),
                          ],
                          name: ["My Location", "Notification", "Logout"],
                          iconColor: Colors.white,
                          onChange: (index) {
                            print(index);
                          },
                        )
                      ],
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
                                color: Color(0xffF4F4F4).withOpacity(.2),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 14.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        height: screenSize.height * 0.01,
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
                                  padding: const EdgeInsets.only(left: 0.0),
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
                                        height: screenSize.height * 0.01,
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
                                  padding: const EdgeInsets.only(right: 14.0),
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
                                        height: screenSize.height * 0.01,
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
                    height: screenSize.height * 0.01,
                  ),
                  Container(
                    height: screenSize.height * 0.2,
                    child:
                        // ListView.builder(
                        //   scrollDirection: Axis.horizontal,
                        //   itemCount: 4,
                        //   itemBuilder: (context, index) =>
                        //       ItemsDashboard(screenSize: screenSize,),
                        // ),
                        ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderListScreen(),
                                ));
                          },
                          child: ItemsDashboard(
                            screenSize: screenSize,
                            name: "New Orders",
                            image: "assets/images/new.png",
                            qty: "6",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      PendingOrderListScreen(),
                                ));
                          },
                          child: ItemsDashboard(
                            screenSize: screenSize,
                            name: "Pending Orders",
                            image: "assets/images/pending.png",
                            qty: "9",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CompleteOrderListScreen(),
                                ));
                          },
                          child: ItemsDashboard(
                            screenSize: screenSize,
                            name: "Completed",
                            image: "assets/images/complete.png",
                            qty: "17",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CancelOrderListScreen(),
                                ));
                          },
                          child: ItemsDashboard(
                            screenSize: screenSize,
                            name: "Cancelled",
                            image: "assets/images/cancel.png",
                            qty: "13",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transaction",
                          style: TextStyle(
                              color: Common.appColor,
                              fontFamily: "sfroundbold",
                              fontSize: 24),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WalletScreen(),
                                ));
                          },
                          child: Image(
                            height: 30,
                            image: AssetImage("assets/images/Wallet.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenSize.height * 0.3,
                    width: screenSize.width,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Date',
                                style: TextStyle(
                                    fontFamily: "sfroundbold",
                                    fontSize: 16,
                                    color: Color(0xff262F56)),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Price (PKR)',
                                style: TextStyle(
                                    fontFamily: "sfroundbold",
                                    fontSize: 16,
                                    color: Color(0xff262F56)),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Name',
                                style: TextStyle(
                                    fontFamily: "sfroundbold",
                                    fontSize: 16,
                                    color: Color(0xff262F56)),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text(
                                  '11-12-2020',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  '4500/-',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                                DataCell(Text(
                                  'Meesum',
                                  style: TextStyle(
                                      fontFamily: "sfroundbold",
                                      fontSize: 12,
                                      color: Color(0xff262F56)),
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
