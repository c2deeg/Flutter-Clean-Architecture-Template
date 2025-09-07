import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'PostController.dart';

class PostPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final PostController controller = Get.find<PostController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Posts")),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.posts.length,
          itemBuilder: (context, index) {
            final post = controller.posts[index];
            return ListTile(
              title: Text(post.title),
              subtitle: Text(post.body),
            );
          },
        );
      }),
    );
  }
}
