import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/feature/show_posts/data/model/post.dart';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class PostRepository implements IPostRepository {
  PostRepository(this._postApiService);

  final PostApiService _postApiService;

  @override
  Future<DataState<PostModel>> getPost(int id) async {
    try {
      final res = await _postApiService.getPost(id);

      if (res.isSuccessful) {
        return DataSuccess(res.body!);
      } else {
        return DataError(ErrorState(res.statusCode, res.error.toString()));
      }
    } catch (e) {
      return DataError(ErrorState(500, e.toString()));
    }
  }

  @override
  Future<DataState<List<PostModel>>> getPosts() async {
    try {
      final res = await _postApiService.getPosts();

      if (res.isSuccessful) {
        return DataSuccess(res.body!);
      } else {
        return DataError(ErrorState(res.statusCode, res.error.toString()));
      }
    } catch (e) {
      return DataError(ErrorState(500, e.toString()));
    }
  }
}
