import 'package:fomo/feature/show_posts/data/model/post.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class LocalDB {
  LocalDB(this._db);

  final Isar _db;

  Future<List<int>> insertPosts(List<PostModel> posts) =>
      _db.writeTxn(() => _db.postModels.putAll(posts));

  Future<int> insertPost(PostModel post) =>
      _db.writeTxn(() => _db.postModels.put(post));

  Future<List<PostModel>> getPosts() => _db.postModels.where().findAll();

  Future<PostModel?> getPost(int id) => _db.postModels.get(id);

  Future<void> deletePost(int id) =>
      _db.writeTxn(() => _db.postModels.delete(id));

  Future<void> deletePosts() =>
      _db.writeTxn(() => _db.postModels.where().deleteAll());

  Future<void> close() => _db.close();
}

Future<Isar> initDb() async {
  return Isar.open(
    [PostModelSchema],
    directory: (await getApplicationDocumentsDirectory()).path,
  );
}
