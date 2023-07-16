// import 'package:fomo/feature/show_posts/dependencies.dart';
// import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
// import 'package:fomo/feature/show_posts/domain/usecase/get_post.dart';
// import 'package:fomo/feature/show_posts/domain/usecase/get_posts.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'show_posts_provider.g.dart';

// @riverpod
// class ShowPosts extends _$ShowPosts {
//   final GetPostUseCase getPostUseCase = sl();
//   final GetPostsUseCase getPostsUseCase = sl();

//   @override
//   Future<List<IPost>> build() {
//     return getPostsUseCase();
//   }

//   void getPosts() {
//     state = getPostsUseCase();
//   }
// }
