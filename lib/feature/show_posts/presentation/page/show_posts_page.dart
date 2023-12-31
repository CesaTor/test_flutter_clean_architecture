import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fomo/config/routes/routes.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';
import 'package:fomo/feature/show_posts/presentation/pod/post/remote/remote_post.dart';
import 'package:fomo/l10n/l10n.dart';

class ShowPostsPage extends ConsumerWidget {
  const ShowPostsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () => ShowSavedPostsRoute().push<void>(context),
          child: Text(l10n.showPostAppBarTitle + 'aaa'),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () => ShowSavedPostsRoute().push<void>(context),
        //     icon: const Icon(Icons.save),
        //   ),
        // ],
      ),
      body: const Center(child: Posts()),
    );
  }
}

class Posts extends ConsumerWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final posts = ref.watch(getRemotePostsProvider);

    return posts.when(
      data: (data) => ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => _Post(post: data[index]),
      ),
      error: (error, stackTrace) => Text(
        error.toString(),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _Post extends StatelessWidget {
  const _Post({required this.post});

  final IPost post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => PostDetailRoute(
        postId: post.id,
        postUrl: post.thumbnailUrl,
      ).push<void>(context),
      leading: Hero(
        tag: post.id,
        child: SizedBox(
          width: 60,
          height: 60,
          child: CachedNetworkImage(
            imageUrl: post.thumbnailUrl,
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
      title: Text(
        post.title,
      ),
      subtitle: Text(
        post.id.toString(),
      ),
    );
  }
}
