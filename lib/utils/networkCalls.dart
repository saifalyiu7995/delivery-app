import 'dart:convert';

import 'package:delivery_app/models/distanceCal.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

Future<DistanceMatrixc> getDistance(String oringn, String destination) async {
  final response = await http.get(
      'https://maps.googleapis.com/maps/api/distancematrix/json?units=imperial&origins=$oringn&destinations=$destination&key=AIzaSyBKkbZ9uCwDCUdBUsbj31m6fHzYWdLQj3k');

  print(response.body);
  return distanceMatrixcFromJson(response.body);
}
