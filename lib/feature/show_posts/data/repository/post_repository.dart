import 'dart:developer';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class PostRepository implements IPostRepository {
  PostRepository(this._postApiService);

  final PostApiService _postApiService;

  @override
  Future<IPost> getPost(int id) async {
    try {
      return await _postApiService.getPost(id);
    } catch (e) {
      log('getPost', error: e);
      rethrow;
    }
  }

  @override
  Future<List<IPost>> getPosts() async {
    try {
      return await _postApiService.getPosts();
    } catch (e) {
      log('getPostss', error: e);
      rethrow;
    }
  }
}
