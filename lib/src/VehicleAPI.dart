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

  Future<String> vehicleUpdate(String id) async {
    final url = '$_baseUrl/$id/update'; // Example: corsair
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return json['response'];
  }

  Future<VehicleState> vehicleState(String id) async {
    final url = '$_baseUrl/$id/state'; // Example: corsair
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);

    // Should set state to the enum for the state if it exists
    // TODO: Haven't yet tested this as I don't have a car to test it with
    var state = VehicleState.values
        .firstWhere((e) => e.toString() == 'VehicleState.' + json['response']);

    // Should return the state, or unknown if the json resopnse doesn't match an enum
    return state ?? VehicleState.unknown;
  }
}
