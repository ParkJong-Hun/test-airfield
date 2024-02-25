// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hong_sc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HongSC {
  String get nickname => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HongSCCopyWith<HongSC> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HongSCCopyWith<$Res> {
  factory $HongSCCopyWith(HongSC value, $Res Function(HongSC) then) =
      _$HongSCCopyWithImpl<$Res, HongSC>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class _$HongSCCopyWithImpl<$Res, $Val extends HongSC>
    implements $HongSCCopyWith<$Res> {
  _$HongSCCopyWithImpl(this._value, this._then);

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
abstract class _$$HongSCImplCopyWith<$Res> implements $HongSCCopyWith<$Res> {
  factory _$$HongSCImplCopyWith(
          _$HongSCImpl value, $Res Function(_$HongSCImpl) then) =
      __$$HongSCImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$HongSCImplCopyWithImpl<$Res>
    extends _$HongSCCopyWithImpl<$Res, _$HongSCImpl>
    implements _$$HongSCImplCopyWith<$Res> {
  __$$HongSCImplCopyWithImpl(
      _$HongSCImpl _value, $Res Function(_$HongSCImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$HongSCImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HongSCImpl implements _HongSC {
  const _$HongSCImpl({required this.nickname});

  @override
  final String nickname;

  @override
  String toString() {
    return 'HongSC(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HongSCImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HongSCImplCopyWith<_$HongSCImpl> get copyWith =>
      __$$HongSCImplCopyWithImpl<_$HongSCImpl>(this, _$identity);
}

abstract class _HongSC implements HongSC {
  const factory _HongSC({required final String nickname}) = _$HongSCImpl;

  @override
  String get nickname;
  @override
  @JsonKey(ignore: true)
  _$$HongSCImplCopyWith<_$HongSCImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
