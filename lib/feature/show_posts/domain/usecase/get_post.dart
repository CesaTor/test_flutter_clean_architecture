import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/core/usecase/usecase.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';

class GetPostUseCase implements UseCase<DataState<IPost>, int> {
  GetPostUseCase(this._postRepository);

  final IPostRepository _postRepository;

  @override
  Future<DataState<IPost>> call({int? params}) {
    return _postRepository.getPost(params ?? 0);
  }
}
