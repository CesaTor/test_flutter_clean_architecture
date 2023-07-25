abstract class IPost {
  IPost({
    required this.albumId,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    required this.id,
  });

  final int id;
  final int albumId;
  final String title;
  final String url;
  final String thumbnailUrl;
}
