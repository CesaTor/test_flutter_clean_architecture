import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';

abstract class IPostRepository {
  Future<List<IPost>> getPosts();
  Future<IPost> getPost(int id);

  Future<List<IPost>> getSavedPosts();
  Future<IPost?> getSavedPost(int id);
  Future<void> savePost(IPost post);
  Future<void> deletePost(int id);
}
