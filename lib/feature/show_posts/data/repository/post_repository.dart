import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class PostRepository implements IPostRepository {
  PostRepository(this._postApiService);

  final PostApiService _postApiService;

  @override
  Future<DataState<IPost>> getPost(int id) async {
    try {
      return DataState.success(await _postApiService.getPost(id));
    } catch (e) {
      return DataState.error(ErrorState(code: 500, message: e.toString()));
    }
  }

  @override
  Future<DataState<List<IPost>>> getPosts() async {
    try {
      return DataState.success(await _postApiService.getPosts());
    } catch (e) {
      return DataState.error(ErrorState(code: 500, message: e.toString()));
    }
  }
}
