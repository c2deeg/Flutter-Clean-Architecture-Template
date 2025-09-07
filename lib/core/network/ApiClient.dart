import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:mvvm_flutter/core/network/HttpClient.dart';

class ApiClient {
  final HttpClient _client = Get.find<HttpClient>();

  Future<List<dynamic>> getJsonList(String url) async {
    final data = await _client.get(url);
    if (data is List) return data;
    throw Exception("Expected List but got ${data.runtimeType}");
  }
}
