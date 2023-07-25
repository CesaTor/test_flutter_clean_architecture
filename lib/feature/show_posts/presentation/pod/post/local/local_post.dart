import 'package:fomo/feature/show_posts/dependencies.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/domain/usecase/usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_post.g.dart';

@riverpod
Future<List<IPost>> getLocalPosts(GetLocalPostsRef ref) {
  return sl<GetSavedPostsUseCase>()(null);
}

@riverpod
Future<void> saveLocalPost(SaveLocalPostRef ref, {required IPost post}) {
  return sl<SavePostUseCase>()(post);
}

@riverpod
Future<IPost?> getLocalPost(
  GetLocalPostRef ref, {
  required int id,
}) {
  // final alive = ref.keepAlive();
  // Timer(const Duration(seconds: 30), alive.close);
  return sl<GetSavedPostUseCase>()(id);
}

@riverpod
Future<void> deleteLocalPosts(
  DeleteLocalPostsRef ref, {
  required int id,
}) {
  return sl<DeleteSavedPostUseCase>()(id);
}

// @riverpod
// class SavedPost extends _$SavedPost {
//   SavedPost();

//   @override
//   IPost? build() => null;

//   // Future<void> save() async {
//   //   try {
//   //     await sl<SavePostUseCase>()(_post);
//   //   } catch (e) {
//   //     error(e);
//   //   }
//   // }

//   // Future<void> delete() {
//   //   return sl<DeletePostUseCase>()(_post.id);
//   // }
// }
