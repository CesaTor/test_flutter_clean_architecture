import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fomo/feature/show_posts/domain/entity/i_post.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({required this.post, super.key});

  final IPost post;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: Hero(
              tag: post.id ?? 'id',
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: post.url ?? 'https://via.placeholder.com/150/951a64',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text('title: ${post.title ?? 'title'}'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text('id: ${post.id ?? '0'}'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Text('albumId: ${post.albumId ?? '0'}'),
            ),
          ),
        ],
      )),
    );
  }
}
