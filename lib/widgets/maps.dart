import 'package:delivery_app/common.dart';
import 'package:delivery_app/models/distanceCal.dart';
import 'package:delivery_app/utils/networkCalls.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_map_polyline/google_map_polyline.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyGoogleMap extends StatefulWidget {
  @override
  State createState() => MyGoogleMapState();
}

class MyGoogleMapState extends State<MyGoogleMap> {
  GoogleMapController mapController;
  // Position currentPosition;
  LatLng latlng;
  Future futureLngLat, futurePolyLine;
  var geoLocator;
  BitmapDescriptor pinLocationIcon, pinLocationIcon2;
  final Set<Polyline> _polyline = {};
  Set<Marker> _markers = {};
  Position position;

  List<LatLng> routeCoords;
  GoogleMapPolyline googleMapPolyline =
      new GoogleMapPolyline(apiKey: "AIzaSyBKkbZ9uCwDCUdBUsbj31m6fHzYWdLQj3k");

  // Future<LatLng> locatePosition() async {
  //   position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);

  //   setState(() {
  //     currentPosition = position;
  //     latlng = LatLng(position.latitude, position.longitude);
  //   });

  //   return latlng;
  // }

  Future getRouteWithPolyLine() async {
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      //currentPosition = position;
      latlng = LatLng(position.latitude, position.longitude);

      Common.orgin =
          latlng.latitude.toString() + "," + latlng.longitude.toString();
    });

    return routeCoords = await googleMapPolyline.getCoordinatesWithLocation(
        origin: latlng,
        destination: LatLng(24.970624, 67.120998),
        mode: RouteMode.driving);
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5, size: Size(30, 30)),
        'assets/images/moto_top.png');
  }

  void setCustomMapPin2() async {
    pinLocationIcon2 = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5, size: Size(30, 30)),
        'assets/images/ic_pick.png');
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // futureLngLat = locatePosition();
    futurePolyLine = getRouteWithPolyLine();
    setCustomMapPin();
    setCustomMapPin2();
    // getRouteWithPolyLine();
    print(routeCoords.toString() + " routesssss from polylines api");

    // _polyline.add(Polyline(
    //   polylineId: PolylineId(LatLng(24.802109, 67.040280).toString()),
    //   visible: true,
    //   width: 5,
    //   //latlng is List<LatLng>
    //   points: [
    //     LatLng(24.807515, 67.039925),
    //     LatLng(24.807321, 67.039825),
    //     LatLng(24.802109, 67.040280)
    //   ],
    //   color: Common.appColor,
    // ));
  }

  @override
  Widget build(context) {
    // widgets go here
    return SafeArea(
      child: Stack(
        children: [
          FutureBuilder(
            future: futurePolyLine,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return GoogleMap(
                  initialCameraPosition:
                      CameraPosition(target: latlng, zoom: 14),
                  polylines: _polyline,
                  // compassEnabled: true,
                  markers: _markers,
                  onMapCreated: _onMapCreated,
                  // myLocationEnabled:
                  //     true, // Add little blue dot for device location, requires permission from user
                  mapType: MapType.normal,
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            top: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                mapController.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(target: latlng, zoom: 16)));
              },
              child: Icon(
                Icons.my_location,
                color: Common.appColor,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
      _markers.add(Marker(
          markerId: MarkerId("1"), position: latlng, icon: pinLocationIcon));

      _markers.add(Marker(
          markerId: MarkerId("2"),
          position: LatLng(24.970624, 67.120998),
          icon: pinLocationIcon2));

      _polyline.add(Polyline(
          polylineId: PolylineId('route1'),
          visible: true,
          points: routeCoords ??
              [LatLng(24.807645, 67.040031), LatLng(24.965347, 67.058638)],
          width: 4,
          color: Common.appColor,
          startCap: Cap.roundCap,
          endCap: Cap.roundCap));

      mapController.setMapStyle("""
      [
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]
      """);
    });

//      [
//   {
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "ffffff"
//       }
//     ]
//   },
//   {
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#8ec3b9"
//       }
//     ]
//   },
//   {
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#1a3646"
//       }
//     ]
//   },
//   {
//     "featureType": "administrative",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#FA4A0C"
//       }
//     ]
//   },
//   {
//     "featureType": "administrative.country",
//     "elementType": "geometry.stroke",
//     "stylers": [
//       {
//         "color": "#4b6878"
//       }
//     ]
//   },
//   {
//     "featureType": "administrative.land_parcel",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#64779e"
//       }
//     ]
//   },
//   {
//     "featureType": "administrative.province",
//     "elementType": "geometry.stroke",
//     "stylers": [
//       {
//         "color": "#4b6878"
//       }
//     ]
//   },
//   {
//     "featureType": "landscape",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#ff5e00"
//       }
//     ]
//   },
//   {
//     "featureType": "landscape.man_made",
//     "elementType": "geometry.stroke",
//     "stylers": [
//       {
//         "color": "#334e87"
//       }
//     ]
//   },
//   {
//     "featureType": "landscape.natural",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#023e58"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "stylers": [
//       {
//         "color": "#FA4A0C"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#283d6a"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#ff5e00"
//       }
//     ]
//   },
//   {
//     "featureType": "poi",
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#1d2c4d"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.attraction",
//     "stylers": [
//       {
//         "color": "#FA4A0C"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.business",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#FA4A0C"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.park",
//     "elementType": "geometry.fill",
//     "stylers": [
//       {
//         "color": "#023e58"
//       }
//     ]
//   },
//   {
//     "featureType": "poi.park",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#3C7680"
//       }
//     ]
//   },
//   {
//     "featureType": "road",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#304a7d"
//       }
//     ]
//   },
//   {
//     "featureType": "road",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#ff6900"
//       }
//     ]
//   },
//   {
//     "featureType": "road",
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#1d2c4d"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#2c6675"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "geometry.stroke",
//     "stylers": [
//       {
//         "color": "#255763"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#b0d5ce"
//       }
//     ]
//   },
//   {
//     "featureType": "road.highway",
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#023e58"
//       }
//     ]
//   },
//   {
//     "featureType": "transit",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#98a5be"
//       }
//     ]
//   },
//   {
//     "featureType": "transit",
//     "elementType": "labels.text.stroke",
//     "stylers": [
//       {
//         "color": "#1d2c4d"
//       }
//     ]
//   },
//   {
//     "featureType": "transit.line",
//     "elementType": "geometry.fill",
//     "stylers": [
//       {
//         "color": "#283d6a"
//       }
//     ]
//   },
//   {
//     "featureType": "transit.station",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#3a4762"
//       }
//     ]
//   },
//   {
//     "featureType": "water",
//     "stylers": [
//       {
//         "color": "#0afffe"
//       },
//       {
//         "visibility": "simplified"
//       }
//     ]
//   },
//   {
//     "featureType": "water",
//     "elementType": "geometry",
//     "stylers": [
//       {
//         "color": "#0e1626"
//       }
//     ]
//   },
//   {
//     "featureType": "water",
//     "elementType": "labels.text.fill",
//     "stylers": [
//       {
//         "color": "#4e6d70"
//       }
//     ]
//   }
// ]
  }
}
