import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fomo/core/util/logger.dart';
import 'package:fomo/feature/show_posts/dependencies.dart';

class AppPodObserver extends ProviderObserver {
  const AppPodObserver();

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    super.didUpdateProvider(provider, previousValue, newValue, container);
    info('onChange(${provider.name}, $previousValue, $newValue)');
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    super.didAddProvider(provider, value, container);
    info('onInit(${provider.name}, $value)');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    super.didDisposeProvider(provider, container);
    info('onDispose(${provider.name})');
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    error(details.exceptionAsString(), details.exception, details.stack);
  };

  WidgetsFlutterBinding.ensureInitialized();

  await initPostsDependencies();

  runApp(
    ProviderScope(
      observers: const [
        AppPodObserver(),
      ],
      child: await builder(),
    ),
  );
}
