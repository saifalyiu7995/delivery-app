import 'package:delivery_app/common.dart';

import 'package:delivery_app/utils/networkCalls.dart';
import 'package:delivery_app/widgets/maps.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackCustomerLocation extends StatefulWidget {
  @override
  _TrackCustomerLocationState createState() => _TrackCustomerLocationState();
}

class _TrackCustomerLocationState extends State<TrackCustomerLocation> {
  LatLng latlng;
  Future futureLocatePosition;

  Future<LatLng> locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      latlng = LatLng(position.latitude, position.longitude);
    });

    return latlng;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    futureLocatePosition = locatePosition();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: MyGoogleMap())),
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
                height: screenSize.height * 0.38,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FutureBuilder(
                      future: futureLocatePosition,
                      builder: (context, snapshott) {
                        if (snapshott.hasData) {
                          return FutureBuilder(
                              future: getDistance(
                                  snapshott.data.latitude.toString() +
                                      "," +
                                      snapshott.data.longitude.toString(),
                                  "24.970624, 67.120998"),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.0, right: 8),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Nida Yasir",
                                              style: TextStyle(
                                                  color: Common.appColor,
                                                  letterSpacing: 1,
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: "sfroundmedium"),
                                            ),
                                            Text(
                                              "0345-199-4525",
                                              style: TextStyle(
                                                  color: Color(0xff3E4958),
                                                  letterSpacing: 1,
                                                  fontFamily: "sfroundmedium",
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenSize.height * 0.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Estimated Time",
                                                  style: TextStyle(
                                                      color: Color(0xff3E4958),
                                                      fontFamily:
                                                          "sfroundmedium",
                                                      fontSize: 14),
                                                ),
                                                Text(
                                                  snapshot
                                                          .data
                                                          .rows[0]
                                                          .elements[0]
                                                          .duration
                                                          .text ??
                                                      "22 min",
                                                  style: TextStyle(
                                                    color: Common.appColor,
                                                    fontFamily: "sfroundmedium",
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Total Distance",
                                                  style: TextStyle(
                                                      color: Color(0xff3E4958),
                                                      fontFamily:
                                                          "sfroundmedium",
                                                      fontSize: 14),
                                                ),
                                                Text(
                                                  snapshot
                                                          .data
                                                          .rows[0]
                                                          .elements[0]
                                                          .distance
                                                          .text ??
                                                      "22 mi",
                                                  style: TextStyle(
                                                    color: Common.appColor,
                                                    fontFamily: "sfroundmedium",
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: screenSize.height * 0.02,
                                      ),
                                      Center(
                                        child: Text(
                                          "Destination Address",
                                          style: TextStyle(
                                            color: Common.appColor,
                                            fontFamily: "sfroundmedium",
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          snapshot.data
                                                  .destinationAddresses[0] ??
                                              "- - -",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xff3E4958),
                                            fontFamily: "sfroundmedium",
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: screenSize.height * 0.03,
                                      ),
                                      Center(
                                        child: Container(
                                          width: screenSize.width * 0.65,
                                          height: screenSize.height * 0.06,
                                          decoration: BoxDecoration(
                                              color: Common.appColor,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Common.appColor
                                                        .withOpacity(0.25),
                                                    blurRadius: 8,
                                                    offset: Offset(0, 4))
                                              ]),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Center(
                                              child: Text(
                                                "CALL / TEXT",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontFamily: "sfroundmedium",
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              });
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
              )),
          Positioned(
            bottom: 230,
            left: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 110,
                width: 110,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8dXNlciUyMHByb2ZpbGV8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
