// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rektometer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RektometerState {
  RektometerModel? get rektometerModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RektometerStateCopyWith<RektometerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RektometerStateCopyWith<$Res> {
  factory $RektometerStateCopyWith(
          RektometerState value, $Res Function(RektometerState) then) =
      _$RektometerStateCopyWithImpl<$Res>;
  $Res call(
      {RektometerModel? rektometerModel, Status status, String? errorMessage});

  $RektometerModelCopyWith<$Res>? get rektometerModel;
}

/// @nodoc
class _$RektometerStateCopyWithImpl<$Res>
    implements $RektometerStateCopyWith<$Res> {
  _$RektometerStateCopyWithImpl(this._value, this._then);

  final RektometerState _value;
  // ignore: unused_field
  final $Res Function(RektometerState) _then;

  @override
  $Res call({
    Object? rektometerModel = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      rektometerModel: rektometerModel == freezed
          ? _value.rektometerModel
          : rektometerModel // ignore: cast_nullable_to_non_nullable
              as RektometerModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $RektometerModelCopyWith<$Res>? get rektometerModel {
    if (_value.rektometerModel == null) {
      return null;
    }

    return $RektometerModelCopyWith<$Res>(_value.rektometerModel!, (value) {
      return _then(_value.copyWith(rektometerModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_RektometerStateCopyWith<$Res>
    implements $RektometerStateCopyWith<$Res> {
  factory _$$_RektometerStateCopyWith(
          _$_RektometerState value, $Res Function(_$_RektometerState) then) =
      __$$_RektometerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RektometerModel? rektometerModel, Status status, String? errorMessage});

  @override
  $RektometerModelCopyWith<$Res>? get rektometerModel;
}

/// @nodoc
class __$$_RektometerStateCopyWithImpl<$Res>
    extends _$RektometerStateCopyWithImpl<$Res>
    implements _$$_RektometerStateCopyWith<$Res> {
  __$$_RektometerStateCopyWithImpl(
      _$_RektometerState _value, $Res Function(_$_RektometerState) _then)
      : super(_value, (v) => _then(v as _$_RektometerState));

  @override
  _$_RektometerState get _value => super._value as _$_RektometerState;

  @override
  $Res call({
    Object? rektometerModel = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RektometerState(
      rektometerModel: rektometerModel == freezed
          ? _value.rektometerModel
          : rektometerModel // ignore: cast_nullable_to_non_nullable
              as RektometerModel?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RektometerState implements _RektometerState {
  const _$_RektometerState(
      {required this.rektometerModel,
      required this.status,
      required this.errorMessage});

  @override
  final RektometerModel? rektometerModel;
  @override
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RektometerState(rektometerModel: $rektometerModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RektometerState &&
            const DeepCollectionEquality()
                .equals(other.rektometerModel, rektometerModel) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rektometerModel),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_RektometerStateCopyWith<_$_RektometerState> get copyWith =>
      __$$_RektometerStateCopyWithImpl<_$_RektometerState>(this, _$identity);
}

abstract class _RektometerState implements RektometerState {
  const factory _RektometerState(
      {required final RektometerModel? rektometerModel,
      required final Status status,
      required final String? errorMessage}) = _$_RektometerState;

  @override
  RektometerModel? get rektometerModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RektometerStateCopyWith<_$_RektometerState> get copyWith =>
      throw _privateConstructorUsedError;
}
