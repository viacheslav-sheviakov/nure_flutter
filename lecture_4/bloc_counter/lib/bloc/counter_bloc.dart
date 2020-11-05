import 'dart:async';
import 'dart:math';

import 'package:bloc_pattern/bloc_pattern.dart';

class CounterBloc extends BlocBase {
  static const _maxRandom = 1000;

  final _counterStreamController = StreamController<int>()..add(0);

  Stream<int> get counterStream => _counterStreamController.stream;

  int _counter = 0;

  @override
  void dispose() {
    _counterStreamController?.close();
    super.dispose();
  }

  void increment() {
    _counterStreamController.add(++_counter);
  }

  void decrement() {
    _counterStreamController.add(--_counter);
  }

  void reset() {
    _counterStreamController.add(_counter = 0);
  }

  void random() {
    final random = Random();
    _counterStreamController.add(_counter = random.nextInt(_maxRandom));
  }
}
