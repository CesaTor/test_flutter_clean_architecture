import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class SavePostUseCase implements UseCase<void, IPost> {
  SavePostUseCase(this._postRepository);

  final IPostRepository _postRepository;

  @override
  Future<void> call(IPost params) {
    return _postRepository.savePost(params);
  }
}
