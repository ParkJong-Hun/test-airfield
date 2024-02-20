import 'package:riverpod_annotation/riverpod_annotation.dart';

// this is needed to run `dart run build_runner build` to generate the file.
part 'counter.g.dart';

@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void incrementCounter() => state++;
}
