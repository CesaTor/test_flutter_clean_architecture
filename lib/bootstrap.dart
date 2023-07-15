import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    log('onChange(${provider.name}, $previousValue, $newValue)');
  }

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    super.didAddProvider(provider, value, container);
    log('onInit(${provider.name}, $value)');
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    super.didDisposeProvider(provider, container);
    log('onDispose(${provider.name})');
  }

  // @override
  // void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
  //   log('onError(${bloc.runtimeType}, $error, $stackTrace)');
  //   super.onError(bloc, error, stackTrace);
  // }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Add cross-flavor configuration here

  runApp(
    ProviderScope(
      observers: const [
        AppPodObserver(),
      ],
      child: await builder(),
    ),
  );
}
