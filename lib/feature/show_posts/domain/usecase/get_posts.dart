import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/data/repository/post_repository.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';

class GetPostsUseCase implements UseCase<DataState<List<IPost>>, void> {
  GetPostsUseCase(this._postRepository);

  final PostRepository _postRepository;

  @override
  Future<DataState<List<IPost>>> call(void params) {
    return _postRepository.getPosts();
  }
}
