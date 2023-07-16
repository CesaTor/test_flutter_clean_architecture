import 'package:dio/dio.dart';
import 'package:fomo/feature/show_posts/data/repository/post_repository.dart';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';
import 'package:fomo/feature/show_posts/domain/usecase/get_post.dart';
import 'package:fomo/feature/show_posts/domain/usecase/get_posts.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initShowPostsDeps() {
  sl
    // Init HTTP Service
    ..registerSingleton<PostApiService>(
      PostApiService(Dio()),
    )
    // Register repository
    ..registerSingleton<IPostRepository>(
      PostRepository(sl()),
    )
    // Register UseCase
    ..registerSingleton<GetPostsUseCase>(
      GetPostsUseCase(sl()),
    )
    // Register UseCase
    ..registerSingleton<GetPostUseCase>(
      GetPostUseCase(sl()),
    );
}
