// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call(
      {List<TradeModel> tradeModels,
      Status status,
      String? errorMessage,
      bool navigatedPortfolio});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeModels = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? navigatedPortfolio = null,
  }) {
    return _then(_value.copyWith(
      tradeModels: null == tradeModels
          ? _value.tradeModels
          : tradeModels // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigatedPortfolio: null == navigatedPortfolio
          ? _value.navigatedPortfolio
          : navigatedPortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsStateImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsStateImplCopyWith(
          _$DetailsStateImpl value, $Res Function(_$DetailsStateImpl) then) =
      __$$DetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TradeModel> tradeModels,
      Status status,
      String? errorMessage,
      bool navigatedPortfolio});
}

/// @nodoc
class __$$DetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsStateImpl>
    implements _$$DetailsStateImplCopyWith<$Res> {
  __$$DetailsStateImplCopyWithImpl(
      _$DetailsStateImpl _value, $Res Function(_$DetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeModels = null,
    Object? status = null,
    Object? errorMessage = freezed,
    Object? navigatedPortfolio = null,
  }) {
    return _then(_$DetailsStateImpl(
      tradeModels: null == tradeModels
          ? _value._tradeModels
          : tradeModels // ignore: cast_nullable_to_non_nullable
              as List<TradeModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigatedPortfolio: null == navigatedPortfolio
          ? _value.navigatedPortfolio
          : navigatedPortfolio // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailsStateImpl implements _DetailsState {
  const _$DetailsStateImpl(
      {required final List<TradeModel> tradeModels,
      required this.status,
      required this.errorMessage,
      required this.navigatedPortfolio})
      : _tradeModels = tradeModels;

  final List<TradeModel> _tradeModels;
  @override
  List<TradeModel> get tradeModels {
    if (_tradeModels is EqualUnmodifiableListView) return _tradeModels;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._tradeModels, _tradeModels) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.navigatedPortfolio, navigatedPortfolio) ||
                other.navigatedPortfolio == navigatedPortfolio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tradeModels),
      status,
      errorMessage,
      navigatedPortfolio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      __$$DetailsStateImplCopyWithImpl<_$DetailsStateImpl>(this, _$identity);
}

abstract class _DetailsState implements DetailsState {
  const factory _DetailsState(
      {required final List<TradeModel> tradeModels,
      required final Status status,
      required final String? errorMessage,
      required final bool navigatedPortfolio}) = _$DetailsStateImpl;

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
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
