import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:teslascopeapi/src/models/Software.dart';

class SoftwareAPI {
  final _baseUrl = 'https://teslascope.com/api/software';
  final http.Client httpClient;

  SoftwareAPI({@required this.httpClient}) : assert(httpClient != null);

  Future<Software> fetchSoftware(String version) async {
    final url = '$_baseUrl/$version'; // Example: 2020.44.10.1
    final response = await httpClient.get(url);

    if (response.statusCode != 200) {
      throw Exception('error getting quotes');
    }

    final json = jsonDecode(response.body);
    return Software.fromJson(json['response']);
  }
}
