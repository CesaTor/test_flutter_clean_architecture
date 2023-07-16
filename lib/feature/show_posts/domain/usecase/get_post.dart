import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class GetPostUseCase implements UseCase<IPost, int> {
  GetPostUseCase(this._postRepository);

  final IPostRepository _postRepository;

  @override
  Future<IPost> call({int? params}) {
    return _postRepository.getPost(params ?? 0);
  }
}
