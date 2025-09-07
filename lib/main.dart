import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_flutter/AppBinding.dart';
import 'package:mvvm_flutter/presentation/getPost/PostPage.dart';

void main() {
  runApp(GetMaterialApp(
    initialBinding: AppBinding(),
    home: PostPage(),
  ));
}


