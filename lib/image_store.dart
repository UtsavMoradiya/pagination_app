import 'dart:convert';

import 'package:a/model.dart';
import 'package:mobx/mobx.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

part 'image_store.g.dart';

// ignore: library_private_types_in_public_api
class HomePageStore = _HomePageStore with _$HomePageStore;

abstract class _HomePageStore with Store {
  @observable
  List<SamplePosts> images = [];

  @observable
  bool isLoading = false;

  @observable
  bool hasMore = true;

  @observable
  int page = 1;

  @observable
  int maxPages = 50;

  @action
  Future<void> fetchImages() async {
    try {
      if (page == maxPages) {
        hasMore = false;
        return ;
      }
      isLoading = true;
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos?_page=$page&_limit=5'),
      );
      final List<dynamic> data = jsonDecode(response.body);
      final List<SamplePosts> newPhotos = data.map((e) => SamplePosts.fromJson(e)).toList();
      images = [...images, ...newPhotos];
      page++;
      if (newPhotos.isEmpty) {
        hasMore = false;
      }
    } catch (e) {
      print('Error fetching photos: $e');
    } finally {
      isLoading = false;
    }
  }
}
