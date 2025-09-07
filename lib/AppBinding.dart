import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:mvvm_flutter/core/network/DioHttpClient.dart';
import 'package:mvvm_flutter/core/network/HttpClient.dart';
import 'package:mvvm_flutter/presentation/getPost/PostController.dart';

import 'core/network/ApiClient.dart';
import 'data/datasources/PostRemoteDataSource.dart';
import 'domain/repositories/PostRepository.dart';
import 'domain/repositories/PostRepositoryImpl.dart';
import 'domain/usecases/GetPosts.dart';


class AppBinding extends Bindings {
  @override
  void dependencies() {
    // Core
    Get.lazyPut<HttpClient>(() => DioHttpClient());
    Get.lazyPut(() => ApiClient());

    // Data
    Get.lazyPut(() => PostRemoteDataSource());
    Get.lazyPut<PostRepository>(() => PostRepositoryImpl());
    Get.lazyPut(() => GetPosts()); // must come AFTER PostRepository


    Get.lazyPut(() => PostController(Get.find<GetPosts>()));

  }
}

