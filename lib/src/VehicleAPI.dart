import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:teslascopeapi/src/models/Vehicle.dart';
import 'package:teslascopeapi/src/models/Command.dart';
import 'package:teslascopeapi/src/globals.dart' as globals;

class VehicleAPI {
  final _baseUrl = 'https://teslascope.com/api/vehicle';
  final http.Client httpClient;

  VehicleAPI({@required this.httpClient}) : assert(httpClient != null);

  Future<dynamic> getJSONResponse(String urlExt) async {
    final url = '$_baseUrl/$urlExt'; // Example: corsair
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting quotes');
    }

    return jsonDecode(response.body);
  }

  Future<Vehicle> fetchVehicle(String id) async {
    final json = await getJSONResponse(id); // Example: corsair

    return Vehicle.fromJson(json['response']);
  }

  Future<String> vehicleUpdate(String id) async {
    final json = await getJSONResponse(
        '${id}/update?api_key=${globals.apiKey}'); // Example: corsair

    return json[
        'response']; // Example: The request to force update the vehicle was successfully sent
  }

  Future<VehicleState> vehicleState(String id) async {
    final json = await getJSONResponse(
        '${id}/state?api_key=${globals.apiKey}'); // Example: corsair

    // Should set state to the enum for the state if it exists
    // TODO: Haven't yet tested this as I don't have a car to test it with
    var state = VehicleState.values
        .firstWhere((e) => e.toString() == 'VehicleState.' + json['response']);

    // Should return the state, or unknown if the json resopnse doesn't match an enum
    return state ?? VehicleState.unknown;
  }

  Future<String> vehicleWakeup(String id) async {
    final json = await getJSONResponse(
        '${id}/wakeup?api_key=${globals.apiKey}'); // Example: corsair

    return json['response']; // Example: online
  }

  Future<String> vehicleControls(String id, Command command) async {
    final json = await getJSONResponse(
        '${id}/command/${command.command}?api_key=${globals.apiKey}'); // Example: corsair, enableSentryMode

    return json['response']; // Example: Sentry mode has been enabled
  }
}
