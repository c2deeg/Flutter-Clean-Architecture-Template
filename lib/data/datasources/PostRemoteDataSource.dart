

import 'package:get/get.dart';

import '../../core/network/ApiClient.dart';
import '../models/PostModel.dart';

class PostRemoteDataSource {
  final ApiClient _apiClient = Get.find<ApiClient>();

  Future<List<PostModel>> getPosts() async {
    final data = await _apiClient.getJsonList(
      "https://jsonplaceholder.typicode.com/posts",
    );
    return data.map<PostModel>((json) => PostModel.fromJson(json)).toList();
  }
}
