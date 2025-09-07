import 'package:get/get.dart';

import '../../data/datasources/PostRemoteDataSource.dart';
import '../../domain/entities/post.dart';
import 'PostRepository.dart';


class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteDataSource = Get.find<PostRemoteDataSource>();

  @override
  Future<List<Post>> getPosts() {
    return remoteDataSource.getPosts();
  }
}
