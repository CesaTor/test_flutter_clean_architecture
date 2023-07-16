import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';

abstract class IPostRepository {
  Future<List<IPost>> getPosts();
  Future<IPost> getPost(int id);
}
