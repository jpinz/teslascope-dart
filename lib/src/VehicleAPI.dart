import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:teslascopeapi/src/models/Vehicle.dart';

class VehicleAPI {
  final _baseUrl = 'https://teslascope.com/api/vehicle';
  final http.Client httpClient;

  VehicleAPI({@required this.httpClient}) : assert(httpClient != null);

  Future<Vehicle> fetchVehicle(String id) async {
    final url = '$_baseUrl/$id'; // Example: corsair
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return Vehicle.fromJson(json['response']);
  }

  Future<String> vehicleString(String id) async {
    var car = await fetchVehicle(id);
    return 'Your car is: $car';
  }
}
