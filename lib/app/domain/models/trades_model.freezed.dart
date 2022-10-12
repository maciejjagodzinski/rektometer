// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trades_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$TradeModelCopyWithImpl<$Res>;
  $Res call(
      {String tradeDocumentId,
      String tradeTokenId,
      double volume,
      double price,
      DateTime date,
      String type});
}

/// @nodoc
class _$TradeModelCopyWithImpl<$Res> implements $TradeModelCopyWith<$Res> {
  _$TradeModelCopyWithImpl(this._value, this._then);

  final TradeModel _value;
  // ignore: unused_field
  final $Res Function(TradeModel) _then;

  @override
  $Res call({
    Object? tradeDocumentId = freezed,
    Object? tradeTokenId = freezed,
    Object? volume = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      tradeDocumentId: tradeDocumentId == freezed
          ? _value.tradeDocumentId
          : tradeDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTokenId: tradeTokenId == freezed
          ? _value.tradeTokenId
          : tradeTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TradeModelCopyWith<$Res>
    implements $TradeModelCopyWith<$Res> {
  factory _$$_TradeModelCopyWith(
          _$_TradeModel value, $Res Function(_$_TradeModel) then) =
      __$$_TradeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String tradeDocumentId,
      String tradeTokenId,
      double volume,
      double price,
      DateTime date,
      String type});
}

/// @nodoc
class __$$_TradeModelCopyWithImpl<$Res> extends _$TradeModelCopyWithImpl<$Res>
    implements _$$_TradeModelCopyWith<$Res> {
  __$$_TradeModelCopyWithImpl(
      _$_TradeModel _value, $Res Function(_$_TradeModel) _then)
      : super(_value, (v) => _then(v as _$_TradeModel));

  @override
  _$_TradeModel get _value => super._value as _$_TradeModel;

  @override
  $Res call({
    Object? tradeDocumentId = freezed,
    Object? tradeTokenId = freezed,
    Object? volume = freezed,
    Object? price = freezed,
    Object? date = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_TradeModel(
      tradeDocumentId: tradeDocumentId == freezed
          ? _value.tradeDocumentId
          : tradeDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
      tradeTokenId: tradeTokenId == freezed
          ? _value.tradeTokenId
          : tradeTokenId // ignore: cast_nullable_to_non_nullable
              as String,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TradeModel extends _TradeModel {
  _$_TradeModel(
      {required this.tradeDocumentId,
      required this.tradeTokenId,
      required this.volume,
      required this.price,
      required this.date,
      required this.type})
      : super._();

  factory _$_TradeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TradeModelFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TradeModel &&
            const DeepCollectionEquality()
                .equals(other.tradeDocumentId, tradeDocumentId) &&
            const DeepCollectionEquality()
                .equals(other.tradeTokenId, tradeTokenId) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tradeDocumentId),
      const DeepCollectionEquality().hash(tradeTokenId),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_TradeModelCopyWith<_$_TradeModel> get copyWith =>
      __$$_TradeModelCopyWithImpl<_$_TradeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TradeModelToJson(
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
      required final String type}) = _$_TradeModel;
  _TradeModel._() : super._();

  factory _TradeModel.fromJson(Map<String, dynamic> json) =
      _$_TradeModel.fromJson;

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
  _$$_TradeModelCopyWith<_$_TradeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
