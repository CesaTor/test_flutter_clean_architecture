import 'package:chopper/chopper.dart';
import 'package:fomo/core/constants/constants.dart';
import 'package:fomo/feature/show_posts/data/model/post.dart';

part 'post_api_service.chopper.dart';

@ChopperApi(baseUrl: postApiBaseUrl)
abstract class PostApiService extends ChopperService {
  static PostApiService create([ChopperClient? client]) =>
      _$PostApiService(client);

  @Get(path: '/photos')
  Future<Response<List<PostModel>>> getPosts();

  @Get(path: '/photos/{id}')
  Future<Response<PostModel>> getPost(@Path() int id);
}
