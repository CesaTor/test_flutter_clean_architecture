import 'package:fomo/core/resources/data_state.dart';
import 'package:fomo/feature/show_posts/dependencies.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/usecase/get_post.dart';
import 'package:fomo/feature/show_posts/domain/usecase/get_posts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_post.g.dart';

@riverpod
Future<DataState<List<IPost>>> getRemotePosts(GetRemotePostsRef ref) {
  return sl<GetPostsUseCase>()();
}

@riverpod
Future<DataState<IPost>> getRemotePost(
  GetRemotePostRef ref,
  int id,
) {
  return sl<GetPostUseCase>()(params: id);
}
