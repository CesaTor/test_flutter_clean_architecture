import 'package:fomo/feature/show_posts/data/model/post.dart';
import 'package:fomo/feature/show_posts/data/source/local/post_database.dart';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class PostRepository implements IPostRepository {
  PostRepository(this._postApiService, this._localDB);

  final PostApiService _postApiService;
  final LocalDB _localDB;

  @override
  Future<IPost> getPost(int id) => _postApiService.getPost(id);

  @override
  Future<List<IPost>> getPosts() => _postApiService.getPosts();

  @override
  Future<void> deletePost(int id) => _localDB.deletePost(id);

  @override
  Future<List<IPost>> getSavedPosts() => _localDB.getPosts();

  @override
  Future<void> savePost(IPost post) =>
      _localDB.insertPost(PostModel.fromEntity(post));

  @override
  Future<IPost?> getSavedPost(int id) => _localDB.getPost(id);
}
