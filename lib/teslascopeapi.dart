library teslascopeapi;

import 'src/globals.dart' as globals;
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'src/SoftwareAPI.dart';
import 'src/VehicleAPI.dart';

export 'src/VehicleAPI.dart';
export 'src/SoftwareAPI.dart';

class TeslascopeAPI {
  final http.Client httpClient;
  final String apiKey;
  VehicleAPI _vehicleAPI;
  SoftwareAPI _softwareAPI;

  TeslascopeAPI({@required this.httpClient, this.apiKey}) {
    assert(httpClient != null);
    _vehicleAPI = VehicleAPI(httpClient: httpClient);
    _softwareAPI = SoftwareAPI(httpClient: httpClient);
    globals.apiKey = apiKey;
  }

  VehicleAPI get vehicleApi {
    return _vehicleAPI;
  }

  SoftwareAPI get softwareAPI {
    return _softwareAPI;
  }
}
