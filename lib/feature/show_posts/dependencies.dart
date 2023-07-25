import 'package:dio/dio.dart';
import 'package:fomo/feature/show_posts/data/repository/post_repository.dart';
import 'package:fomo/feature/show_posts/data/source/local/post_database.dart';
import 'package:fomo/feature/show_posts/data/source/remote/post_api_service.dart';
import 'package:fomo/feature/show_posts/domain/repository/i_post_repository.dart';
import 'package:fomo/feature/show_posts/domain/usecase/usecases.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initPostsDependencies() async {
  final db = await initDb();
  sl
    // Init HTTP Service
    ..registerSingleton(Dio())
    ..registerSingleton(
      PostApiService(sl()),
    )
    // Init LocalDB
    ..registerSingleton<LocalDB>(LocalDB(db))
    // Register repository
    ..registerSingleton<IPostRepository>(PostRepository(sl(), sl()))
    // Register UseCases
    ..registerSingleton(GetPostsUseCase(sl()))
    ..registerSingleton(GetPostUseCase(sl()))
    ..registerSingleton(GetSavedPostUseCase(sl()))
    ..registerSingleton(GetSavedPostsUseCase(sl()))
    ..registerSingleton(SavePostUseCase(sl()))
    ..registerSingleton(DeleteSavedPostUseCase(sl()));
}
