// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trades_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeModel _$TradeModelFromJson(Map<String, dynamic> json) {
  return _TradeModel.fromJson(json);
}

/// @nodoc
mixin _$TradeModel {
  String get tradeDocumentId => throw _privateConstructorUsedError;
  String get tradeTokenId => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeModelCopyWith<TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeModelCopyWith<$Res> {
  factory $TradeModelCopyWith(
          TradeModel value, $Res Function(TradeModel) then) =
      _$TradeModelCopyWithImpl<$Res, TradeModel>;
  @useResult
  $Res call(
      {String tradeDocumentId,
      String tradeTokenId,
      double volume,
      double price,
      DateTime date,
      String type});
}

/// @nodoc
class _$TradeModelCopyWithImpl<$Res, $Val extends TradeModel>
    implements $TradeModelCopyWith<$Res> {
  _$TradeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeDocumentId = null,
    Object? tradeTokenId = null,
    Object? volume = null,
    Object? price = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      tradeDocumentId: null == tradeDocumentId
          ? _value.tradeDocumentId
          : tradeDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTokenId: null == tradeTokenId
          ? _value.tradeTokenId
          : tradeTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeModelImplCopyWith<$Res>
    implements $TradeModelCopyWith<$Res> {
  factory _$$TradeModelImplCopyWith(
          _$TradeModelImpl value, $Res Function(_$TradeModelImpl) then) =
      __$$TradeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String tradeDocumentId,
      String tradeTokenId,
      double volume,
      double price,
      DateTime date,
      String type});
}

/// @nodoc
class __$$TradeModelImplCopyWithImpl<$Res>
    extends _$TradeModelCopyWithImpl<$Res, _$TradeModelImpl>
    implements _$$TradeModelImplCopyWith<$Res> {
  __$$TradeModelImplCopyWithImpl(
      _$TradeModelImpl _value, $Res Function(_$TradeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tradeDocumentId = null,
    Object? tradeTokenId = null,
    Object? volume = null,
    Object? price = null,
    Object? date = null,
    Object? type = null,
  }) {
    return _then(_$TradeModelImpl(
      tradeDocumentId: null == tradeDocumentId
          ? _value.tradeDocumentId
          : tradeDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTokenId: null == tradeTokenId
          ? _value.tradeTokenId
          : tradeTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeModelImpl extends _TradeModel {
  _$TradeModelImpl(
      {required this.tradeDocumentId,
      required this.tradeTokenId,
      required this.volume,
      required this.price,
      required this.date,
      required this.type})
      : super._();

  factory _$TradeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeModelImplFromJson(json);

  @override
  final String tradeDocumentId;
  @override
  final String tradeTokenId;
  @override
  final double volume;
  @override
  final double price;
  @override
  final DateTime date;
  @override
  final String type;

  @override
  String toString() {
    return 'TradeModel(tradeDocumentId: $tradeDocumentId, tradeTokenId: $tradeTokenId, volume: $volume, price: $price, date: $date, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeModelImpl &&
            (identical(other.tradeDocumentId, tradeDocumentId) ||
                other.tradeDocumentId == tradeDocumentId) &&
            (identical(other.tradeTokenId, tradeTokenId) ||
                other.tradeTokenId == tradeTokenId) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, tradeDocumentId, tradeTokenId, volume, price, date, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeModelImplCopyWith<_$TradeModelImpl> get copyWith =>
      __$$TradeModelImplCopyWithImpl<_$TradeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeModelImplToJson(
      this,
    );
  }
}

abstract class _TradeModel extends TradeModel {
  factory _TradeModel(
      {required final String tradeDocumentId,
      required final String tradeTokenId,
      required final double volume,
      required final double price,
      required final DateTime date,
      required final String type}) = _$TradeModelImpl;
  _TradeModel._() : super._();

  factory _TradeModel.fromJson(Map<String, dynamic> json) =
      _$TradeModelImpl.fromJson;

  @override
  String get tradeDocumentId;
  @override
  String get tradeTokenId;
  @override
  double get volume;
  @override
  double get price;
  @override
  DateTime get date;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$TradeModelImplCopyWith<_$TradeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
