// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'root_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootState {
  User? get user => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  bool get isCreatingAccount => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RootStateCopyWith<RootState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootStateCopyWith<$Res> {
  factory $RootStateCopyWith(RootState value, $Res Function(RootState) then) =
      _$RootStateCopyWithImpl<$Res>;
  $Res call(
      {User? user,
      Status status,
      bool isCreatingAccount,
      String? errorMessage});
}

/// @nodoc
class _$RootStateCopyWithImpl<$Res> implements $RootStateCopyWith<$Res> {
  _$RootStateCopyWithImpl(this._value, this._then);

  final RootState _value;
  // ignore: unused_field
  final $Res Function(RootState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? isCreatingAccount = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_RootStateCopyWith<$Res> implements $RootStateCopyWith<$Res> {
  factory _$$_RootStateCopyWith(
          _$_RootState value, $Res Function(_$_RootState) then) =
      __$$_RootStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? user,
      Status status,
      bool isCreatingAccount,
      String? errorMessage});
}

/// @nodoc
class __$$_RootStateCopyWithImpl<$Res> extends _$RootStateCopyWithImpl<$Res>
    implements _$$_RootStateCopyWith<$Res> {
  __$$_RootStateCopyWithImpl(
      _$_RootState _value, $Res Function(_$_RootState) _then)
      : super(_value, (v) => _then(v as _$_RootState));

  @override
  _$_RootState get _value => super._value as _$_RootState;

  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? isCreatingAccount = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_RootState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      isCreatingAccount: isCreatingAccount == freezed
          ? _value.isCreatingAccount
          : isCreatingAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_RootState implements _RootState {
  const _$_RootState(
      {required this.user,
      required this.status,
      required this.isCreatingAccount,
      required this.errorMessage});

  @override
  final User? user;
  @override
  final Status status;
  @override
  final bool isCreatingAccount;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'RootState(user: $user, status: $status, isCreatingAccount: $isCreatingAccount, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.isCreatingAccount, isCreatingAccount) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(isCreatingAccount),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      __$$_RootStateCopyWithImpl<_$_RootState>(this, _$identity);
}

abstract class _RootState implements RootState {
  const factory _RootState(
      {required final User? user,
      required final Status status,
      required final bool isCreatingAccount,
      required final String? errorMessage}) = _$_RootState;

  @override
  User? get user;
  @override
  Status get status;
  @override
  bool get isCreatingAccount;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_RootStateCopyWith<_$_RootState> get copyWith =>
      throw _privateConstructorUsedError;
}
