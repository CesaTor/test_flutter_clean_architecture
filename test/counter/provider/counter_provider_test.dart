import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fomo/counter/provider/counter_provider.dart';
import 'package:mocktail/mocktail.dart';

// Using mockito to keep track of when a provider notify its listeners
class Listener extends Mock {
  void call(int? previous, int value);
}

void main() {
  test('CounterProvider', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    // Observe a provider and spy the changes.
    container.listen<int>(
      counterProvider,
      listener.call,
      fireImmediately: true,
    );

    final counter = container.read(counterProvider.notifier);

    // expect(counter, 0);
    verify(() => listener(null, 0)).called(1);
    counter.increment();
    verify(() => listener(0, 1)).called(1);
    // expect(counter, 1);
    counter.decrement();
    verify(() => listener(1, 0)).called(1);
    // expect(counter, 0);
  });

  test('CounterProvider scope', () {
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    // Observe a provider and spy the changes.
    container.listen<int>(
      counterProvider,
      listener.call,
      fireImmediately: true,
    );

    final counter = container.read(counterProvider.notifier);

    // expect(counter, 0);
    verify(() => listener(null, 0)).called(1);
    counter.increment();
    verify(() => listener(0, 1)).called(1);
    // expect(counter, 1);
    counter.decrement();
    verify(() => listener(1, 0)).called(1);
    // expect(counter, 0);
  });
}
