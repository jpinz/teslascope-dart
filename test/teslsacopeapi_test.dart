import 'package:http/http.dart' as http;

import 'package:teslascopeapi/teslascopeapi.dart';
import 'package:test/test.dart';

void main() {
  group('Vehicle API Tests', () {
    var vehicleApi;

    setUp(() {
      var client = http.Client();
      vehicleApi = VehicleAPI(httpClient: client);
    });

    test('checkName', () async {
      expect(
          await vehicleApi.fetchVehicle('corsair').then((value) => value.name),
          'Nautilus');
    });

    test('checkPublicId', () async {
      expect(
          await vehicleApi
              .fetchVehicle('corsair')
              .then((value) => value.publicId),
          'corsair');
    });

    test('checkYear', () async {
      expect(
          await vehicleApi.fetchVehicle('corsair').then((value) => value.year),
          '2018');
    });
  });

  group('Software API Tests', () {
    var softwareApi;

    setUp(() {
      var client = http.Client();
      softwareApi = SoftwareAPI(httpClient: client);
    });

    test('checkVersion', () async {
      expect(
          await softwareApi
              .fetchSoftware('2020.44.10.1')
              .then((value) => value.version),
          '2020.44.10.1');
    });

    test('checkCommit', () async {
      expect(
          await softwareApi
              .fetchSoftware('2020.44.10.1')
              .then((value) => value.commit),
          '955dc1dd145e');
    });

    test('checkMajorAndMinor', () async {
      expect(
          await softwareApi
              .fetchSoftware('2020.44.10.1')
              .then((value) => '${value.major}.${value.minor}'),
          '10.1');
    });
  });

  group('Teslascope API Tests', () {
    var teslascopeApi;

    setUp(() {
      var client = http.Client();
      teslascopeApi = TeslascopeAPI(httpClient: client, apiKey: '<api_key>');
    });

    test('checkName', () async {
      expect(
          await teslascopeApi.vehicleApi
              .fetchVehicle('corsair')
              .then((value) => value.name),
          'Nautilus');
    });
  });
}
