// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rektometer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$RektometerStateCopyWithImpl<$Res, RektometerState>;
  @useResult
  $Res call(
      {RektometerModel? rektometerModel, Status status, String? errorMessage});

  $RektometerModelCopyWith<$Res>? get rektometerModel;
}

/// @nodoc
class _$RektometerStateCopyWithImpl<$Res, $Val extends RektometerState>
    implements $RektometerStateCopyWith<$Res> {
  _$RektometerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rektometerModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      rektometerModel: freezed == rektometerModel
          ? _value.rektometerModel
          : rektometerModel // ignore: cast_nullable_to_non_nullable
              as RektometerModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RektometerModelCopyWith<$Res>? get rektometerModel {
    if (_value.rektometerModel == null) {
      return null;
    }

    return $RektometerModelCopyWith<$Res>(_value.rektometerModel!, (value) {
      return _then(_value.copyWith(rektometerModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RektometerStateImplCopyWith<$Res>
    implements $RektometerStateCopyWith<$Res> {
  factory _$$RektometerStateImplCopyWith(_$RektometerStateImpl value,
          $Res Function(_$RektometerStateImpl) then) =
      __$$RektometerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RektometerModel? rektometerModel, Status status, String? errorMessage});

  @override
  $RektometerModelCopyWith<$Res>? get rektometerModel;
}

/// @nodoc
class __$$RektometerStateImplCopyWithImpl<$Res>
    extends _$RektometerStateCopyWithImpl<$Res, _$RektometerStateImpl>
    implements _$$RektometerStateImplCopyWith<$Res> {
  __$$RektometerStateImplCopyWithImpl(
      _$RektometerStateImpl _value, $Res Function(_$RektometerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rektometerModel = freezed,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$RektometerStateImpl(
      rektometerModel: freezed == rektometerModel
          ? _value.rektometerModel
          : rektometerModel // ignore: cast_nullable_to_non_nullable
              as RektometerModel?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RektometerStateImpl implements _RektometerState {
  const _$RektometerStateImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RektometerStateImpl &&
            (identical(other.rektometerModel, rektometerModel) ||
                other.rektometerModel == rektometerModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, rektometerModel, status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RektometerStateImplCopyWith<_$RektometerStateImpl> get copyWith =>
      __$$RektometerStateImplCopyWithImpl<_$RektometerStateImpl>(
          this, _$identity);
}

abstract class _RektometerState implements RektometerState {
  const factory _RektometerState(
      {required final RektometerModel? rektometerModel,
      required final Status status,
      required final String? errorMessage}) = _$RektometerStateImpl;

  @override
  RektometerModel? get rektometerModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$RektometerStateImplCopyWith<_$RektometerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
