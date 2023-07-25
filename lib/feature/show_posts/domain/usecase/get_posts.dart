import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class GetPostsUseCase implements UseCase<List<IPost>, void> {
  GetPostsUseCase(this._postRepository);

  final IPostRepository _postRepository;

  @override
  Future<List<IPost>> call(void params) {
    return _postRepository.getPosts();
  }
}
