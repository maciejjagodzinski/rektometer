// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsState {
  List<TradeModel> get tradeModels => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get navigatedPortfolio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
  $Res call(
      {List<TradeModel> tradeModels,
      Status status,
      String? errorMessage,
      bool navigatedPortfolio});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;

  @override
  $Res call({
    Object? tradeModels = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? navigatedPortfolio = freezed,
  }) {
    return _then(_value.copyWith(
      tradeModels: tradeModels == freezed
          ? _value.tradeModels
          : tradeModels // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigatedPortfolio: navigatedPortfolio == freezed
          ? _value.navigatedPortfolio
          : navigatedPortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_DetailsStateCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$_DetailsStateCopyWith(
          _$_DetailsState value, $Res Function(_$_DetailsState) then) =
      __$$_DetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TradeModel> tradeModels,
      Status status,
      String? errorMessage,
      bool navigatedPortfolio});
}

/// @nodoc
class __$$_DetailsStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$$_DetailsStateCopyWith<$Res> {
  __$$_DetailsStateCopyWithImpl(
      _$_DetailsState _value, $Res Function(_$_DetailsState) _then)
      : super(_value, (v) => _then(v as _$_DetailsState));

  @override
  _$_DetailsState get _value => super._value as _$_DetailsState;

  @override
  $Res call({
    Object? tradeModels = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
    Object? navigatedPortfolio = freezed,
  }) {
    return _then(_$_DetailsState(
      tradeModels: tradeModels == freezed
          ? _value._tradeModels
          : tradeModels // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigatedPortfolio: navigatedPortfolio == freezed
          ? _value.navigatedPortfolio
          : navigatedPortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DetailsState implements _DetailsState {
  const _$_DetailsState(
      {required final List<TradeModel> tradeModels,
      required this.status,
      required this.errorMessage,
      required this.navigatedPortfolio})
      : _tradeModels = tradeModels;

  final List<TradeModel> _tradeModels;
  @override
  List<TradeModel> get tradeModels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tradeModels);
  }

  @override
  final Status status;
  @override
  final String? errorMessage;
  @override
  final bool navigatedPortfolio;

  @override
  String toString() {
    return 'DetailsState(tradeModels: $tradeModels, status: $status, errorMessage: $errorMessage, navigatedPortfolio: $navigatedPortfolio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsState &&
            const DeepCollectionEquality()
                .equals(other._tradeModels, _tradeModels) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.navigatedPortfolio, navigatedPortfolio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tradeModels),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(navigatedPortfolio));

  @JsonKey(ignore: true)
  @override
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      __$$_DetailsStateCopyWithImpl<_$_DetailsState>(this, _$identity);
}

abstract class _DetailsState implements DetailsState {
  const factory _DetailsState(
      {required final List<TradeModel> tradeModels,
      required final Status status,
      required final String? errorMessage,
      required final bool navigatedPortfolio}) = _$_DetailsState;

  @override
  List<TradeModel> get tradeModels;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  bool get navigatedPortfolio;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsStateCopyWith<_$_DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
