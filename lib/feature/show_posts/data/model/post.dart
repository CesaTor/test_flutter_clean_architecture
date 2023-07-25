import 'package:fomo/feature/show_posts/data/model/generation_utils.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
@collectionOnFreezed
class PostModel extends IPost with _$PostModel {
  factory PostModel({
    required int id,
    required int albumId,
    required String title,
    required String url,
    required String thumbnailUrl,
  }) = _Post;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  factory PostModel.fromEntity(IPost post) => PostModel(
        id: post.id,
        albumId: post.albumId,
        title: post.title,
        url: post.url,
        thumbnailUrl: post.thumbnailUrl,
      );

  PostModel._()
      : super(
          id: 0,
          albumId: 0,
          title: '',
          url: '',
          thumbnailUrl: '',
        );

  @override
  Id get id => Isar.autoIncrement;

  @override
  String toString() {
    return 'PostModel(title: $title)';
  }
}
