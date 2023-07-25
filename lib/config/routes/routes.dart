import 'package:flutter/material.dart';
import 'package:fomo/feature/show_posts/presentation/page/post_detail_page.dart';
import 'package:fomo/feature/show_posts/presentation/page/show_posts_page.dart';
import 'package:fomo/feature/show_posts/presentation/page/show_saved_posts_page.dart';
import 'package:go_router/go_router.dart';

part 'routes.g.dart';

@TypedGoRoute<ShowPostsRoute>(
  path: '/',
  routes: [
    TypedGoRoute<PostDetailRoute>(
      path: 'posts/:postId',
    ),
    TypedGoRoute<ShowSavedPostsRoute>(
      path: 'saved_posts',
    )
  ],
)
@immutable
class ShowPostsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShowSavedPostsPage();
  }
}

@immutable
class ShowSavedPostsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ShowPostsPage();
  }
}

@immutable
class PostDetailRoute extends GoRouteData {
  const PostDetailRoute({
    required this.postId,
    required this.postUrl,
  });

  final int postId;
  final String postUrl;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PostDetailPage(
      postId: postId,
      postUrl: postUrl,
    );
  }
}
