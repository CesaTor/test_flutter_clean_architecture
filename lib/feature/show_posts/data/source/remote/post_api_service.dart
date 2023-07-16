import 'package:dio/dio.dart';
import 'package:fomo/core/constants/constants.dart';
import 'package:fomo/feature/show_posts/data/model/post.dart';
import 'package:retrofit/http.dart';

part 'post_api_service.g.dart';

@RestApi(baseUrl: postApiBaseUrl)
abstract class PostApiService {
  factory PostApiService(Dio dio, {String baseUrl}) = _PostApiService;

  @GET('/photos')
  Future<List<PostModel>> getPosts();

  @GET('/photos/{id}')
  Future<PostModel> getPost(@Path() int id);
}
