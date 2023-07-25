import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fomo/feature/show_posts/presentation/pod/post/local/local_post.dart';
import 'package:fomo/feature/show_posts/presentation/pod/post/remote/remote_post.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({
    required this.postId,
    required this.postUrl,
    super.key,
  });

  final int postId;
  final String postUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final remotePost = ref.watch(getRemotePostProvider(postId));

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: Hero(
              tag: postId,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: postUrl,
                placeholder: (context, url) => DecoratedBox(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(postUrl),
                    ),
                  ),
                ),
              ),
            ),
          ),
          ...remotePost.when(
            data: (post) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('title: ${post.title}'),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('id: ${post.id}'),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text('albumId: ${post.albumId}'),
                ),
              ),
            ],
            loading: () => [
              const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              )
            ],
            error: (error, stackTrace) => [
              Center(
                child: Text(error.toString()),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: remotePost.when(
        data: (data) => FloatingActionButton(
          onPressed: () {
            ref.read(saveLocalPostProvider(post: data));
          },
          child: const Icon(Icons.favorite_border),
        ),
        error: (error, stackTrace) => null,
        loading: () => null,
      ),
    );
  }
}
