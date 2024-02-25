import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'miyaji_san.g.dart';

@riverpod
class MiyajiSan extends _$MiyajiSan {
  @override
  String build() => "宮地さん";

  void changeYobikata(String yobikata) {
    state = "宮地$yobikata";
  }
}
