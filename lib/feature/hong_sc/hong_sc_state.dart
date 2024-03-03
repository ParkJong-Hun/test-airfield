import 'package:freezed_annotation/freezed_annotation.dart';

part 'hong_sc_state.freezed.dart';

@freezed
class HongSCState with _$HongSCState {
  const factory HongSCState({
    required String nickname,
  }) = _HongSCState;
}
