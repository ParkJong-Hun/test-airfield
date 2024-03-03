// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hong_sc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HongSCState {
  String get nickname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HongSCStateCopyWith<HongSCState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HongSCStateCopyWith<$Res> {
  factory $HongSCStateCopyWith(
          HongSCState value, $Res Function(HongSCState) then) =
      _$HongSCStateCopyWithImpl<$Res, HongSCState>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$HongSCStateCopyWithImpl<$Res, $Val extends HongSCState>
    implements $HongSCStateCopyWith<$Res> {
  _$HongSCStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HongSCStateImplCopyWith<$Res>
    implements $HongSCStateCopyWith<$Res> {
  factory _$$HongSCStateImplCopyWith(
          _$HongSCStateImpl value, $Res Function(_$HongSCStateImpl) then) =
      __$$HongSCStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$HongSCStateImplCopyWithImpl<$Res>
    extends _$HongSCStateCopyWithImpl<$Res, _$HongSCStateImpl>
    implements _$$HongSCStateImplCopyWith<$Res> {
  __$$HongSCStateImplCopyWithImpl(
      _$HongSCStateImpl _value, $Res Function(_$HongSCStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$HongSCStateImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HongSCStateImpl implements _HongSCState {
  const _$HongSCStateImpl({required this.nickname});

  @override
  final String nickname;

  @override
  String toString() {
    return 'HongSCState(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HongSCStateImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HongSCStateImplCopyWith<_$HongSCStateImpl> get copyWith =>
      __$$HongSCStateImplCopyWithImpl<_$HongSCStateImpl>(this, _$identity);
}

abstract class _HongSCState implements HongSCState {
  const factory _HongSCState({required final String nickname}) =
      _$HongSCStateImpl;

  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$HongSCStateImplCopyWith<_$HongSCStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
