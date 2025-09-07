import 'package:get/get.dart';
import '../../domain/entities/post.dart';
import '../../domain/usecases/GetPosts.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  final GetPosts getPosts;
  PostController(this.getPosts);
  var posts = <Post>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPosts();
  }

  void fetchPosts() async {
    try {
      isLoading.value = true;
      posts.value = await getPosts();
    } finally {
      isLoading.value = false;
    }
  }
}
