import 'package:dio/dio.dart';
import 'package:mvvm_flutter/core/network/HttpClient.dart';

class DioHttpClient implements HttpClient {
  final Dio _dio = Dio(
    BaseOptions(
      validateStatus: (status) => true, // don't throw, handle manually
    ),
  );

  @override
  Future<dynamic> get(String url) async {
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      // handle error yourself
      throw Exception("Failed request [${response.statusCode}]: ${response.statusMessage}");
    }
  }
}
