// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $showPostsRoute,
    ];

RouteBase get $showPostsRoute => GoRouteData.$route(
      path: '/',
      factory: $ShowPostsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'posts/:postId',
          factory: $PostDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'saved_posts',
          factory: $ShowSavedPostsRouteExtension._fromState,
        ),
      ],
    );

extension $ShowPostsRouteExtension on ShowPostsRoute {
  static ShowPostsRoute _fromState(GoRouterState state) => ShowPostsRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostDetailRouteExtension on PostDetailRoute {
  static PostDetailRoute _fromState(GoRouterState state) => PostDetailRoute(
        postId: int.parse(state.pathParameters['postId']!),
        postUrl: state.queryParameters['post-url']!,
      );

  String get location => GoRouteData.$location(
        '/posts/${Uri.encodeComponent(postId.toString())}',
        queryParams: {
          'post-url': postUrl,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowSavedPostsRouteExtension on ShowSavedPostsRoute {
  static ShowSavedPostsRoute _fromState(GoRouterState state) =>
      ShowSavedPostsRoute();

  String get location => GoRouteData.$location(
        '/saved_posts',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
