import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class DeleteSavedPostUseCase implements UseCase<void, int> {
  DeleteSavedPostUseCase(this._postRepository);

  final IPostRepository _postRepository;

  @override
  Future<void> call(int params) {
    return _postRepository.deletePost(params);
  }
}
