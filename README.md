# Teslascope.com Dart API Implementation

## Usage

A simple usage example:

```dart
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
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/jpinz/teslascope-dart/issues
