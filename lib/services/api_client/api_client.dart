import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:lilac_test/services/api_client/api_constants.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
class ApiClient extends _$ApiClient {
  @override
  FutureOr<void> build() {
    client = http.Client();
  }

  late http.Client client;

  dynamic post({required Map<String, dynamic> body, required String path}) async {
    print(body);
    print(_getPath(path));
    http.Response response = await client.post(
      _getPath(path),
      body: json.encode(body),
      headers: {"Content-Type": "application/json"},
    );
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    print(decodedResponse);
    return decodedResponse;
  }

  dynamic get({Map<String, String>? header, required String path}) async {
    print(header);
    print(_getPath(path));
    Map<String, String> apiHeader = {"Content-Type": "application/json"};
    if (header != null) {
      apiHeader.addAll(header);
    }
    http.Response response = await client.get(
      _getPath(path),
      headers: apiHeader,
    );
    var decodedResponse = jsonDecode(utf8.decode(response.bodyBytes)) as Map;
    print(decodedResponse);
    return decodedResponse;
  }
}

Uri _getPath(String path) {
  return Uri.parse(ApiConstants.baseUrl + path);
}
