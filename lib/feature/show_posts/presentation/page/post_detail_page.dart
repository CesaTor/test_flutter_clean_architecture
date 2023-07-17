import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fomo/feature/show_posts/presentation/pod/post/remote/remote_post.dart';

class PostDetailPage extends ConsumerWidget {
  const PostDetailPage({required this.postId, super.key});

  final int postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(getRemotePostProvider(postId));

    return Scaffold(
      body: provider.when(
        data: (post) => post.when(
          success: (post) => CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 200,
                flexibleSpace: Hero(
                  tag: post.id,
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: post.url,
                  ),
                ),
              ),
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
          ),
          error: (error) => CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(error.message),
              ),
            ],
          ),
        ),
        loading: () => const CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text('Loading...'),
            ),
            SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            )
          ],
        ),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
