import 'package:http/http.dart' as http;

import 'package:teslascopeapi/teslascopeapi.dart';

Future<void> main() async {
  var client = http.Client();
  var vehicle = VehicleAPI(httpClient: client);
  var software = SoftwareAPI(httpClient: client);
  print(await vehicle.fetchVehicle('corsair').then((value) => value.name));
  print(await software
      .fetchSoftware('2020.44.10.1')
      .then((value) => value.version));
}
