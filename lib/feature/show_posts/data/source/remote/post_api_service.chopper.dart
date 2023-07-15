// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PostApiService extends PostApiService {
  _$PostApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PostApiService;

  @override
  Future<Response<List<PostModel>>> getPosts() {
    final Uri $url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PostModel>, PostModel>($request);
  }

  @override
  Future<Response<PostModel>> getPost(int id) {
    final Uri $url =
        Uri.parse('https://jsonplaceholder.typicode.com/photos/${id}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<PostModel, PostModel>($request);
  }
}
