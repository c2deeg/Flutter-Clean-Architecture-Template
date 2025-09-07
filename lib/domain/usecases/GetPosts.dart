import 'package:get/get.dart';

import '../entities/post.dart';
import '../repositories/PostRepository.dart';

class GetPosts {
  final PostRepository repository = Get.find<PostRepository>();

  Future<List<Post>> call() {
    return repository.getPosts();
  }
}
