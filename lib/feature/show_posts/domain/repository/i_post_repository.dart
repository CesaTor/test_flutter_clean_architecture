import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';

abstract class IPostRepository {
  Future<DataState<List<IPost>>> getPosts();
  Future<DataState<IPost>> getPost(int id);
}
