// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rektometer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RektometerModel _$RektometerModelFromJson(Map<String, dynamic> json) {
  return _RektometerModel.fromJson(json);
}

/// @nodoc
mixin _$RektometerModel {
  @JsonKey(defaultValue: 0.0)
  double get currentValue => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get initialValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get tokenId => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RektometerModelCopyWith<RektometerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RektometerModelCopyWith<$Res> {
  factory $RektometerModelCopyWith(
          RektometerModel value, $Res Function(RektometerModel) then) =
      _$RektometerModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 0.0) double currentValue,
      @JsonKey(defaultValue: 0.0) double initialValue,
      @JsonKey(name: 'id') String tokenId,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(defaultValue: 0.0) double volume});
}

/// @nodoc
class _$RektometerModelCopyWithImpl<$Res>
    implements $RektometerModelCopyWith<$Res> {
  _$RektometerModelCopyWithImpl(this._value, this._then);

  final RektometerModel _value;
  // ignore: unused_field
  final $Res Function(RektometerModel) _then;

  @override
  $Res call({
    Object? currentValue = freezed,
    Object? initialValue = freezed,
    Object? tokenId = freezed,
    Object? price = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_RektometerModelCopyWith<$Res>
    implements $RektometerModelCopyWith<$Res> {
  factory _$$_RektometerModelCopyWith(
          _$_RektometerModel value, $Res Function(_$_RektometerModel) then) =
      __$$_RektometerModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 0.0) double currentValue,
      @JsonKey(defaultValue: 0.0) double initialValue,
      @JsonKey(name: 'id') String tokenId,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(defaultValue: 0.0) double volume});
}

/// @nodoc
class __$$_RektometerModelCopyWithImpl<$Res>
    extends _$RektometerModelCopyWithImpl<$Res>
    implements _$$_RektometerModelCopyWith<$Res> {
  __$$_RektometerModelCopyWithImpl(
      _$_RektometerModel _value, $Res Function(_$_RektometerModel) _then)
      : super(_value, (v) => _then(v as _$_RektometerModel));

  @override
  _$_RektometerModel get _value => super._value as _$_RektometerModel;

  @override
  $Res call({
    Object? currentValue = freezed,
    Object? initialValue = freezed,
    Object? tokenId = freezed,
    Object? price = freezed,
    Object? volume = freezed,
  }) {
    return _then(_$_RektometerModel(
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      initialValue: initialValue == freezed
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RektometerModel extends _RektometerModel {
  _$_RektometerModel(
      {@JsonKey(defaultValue: 0.0) required this.currentValue,
      @JsonKey(defaultValue: 0.0) required this.initialValue,
      @JsonKey(name: 'id') required this.tokenId,
      @JsonKey(name: 'current_price') required this.price,
      @JsonKey(defaultValue: 0.0) required this.volume})
      : super._();

  factory _$_RektometerModel.fromJson(Map<String, dynamic> json) =>
      _$$_RektometerModelFromJson(json);

  @override
  @JsonKey(defaultValue: 0.0)
  final double currentValue;
  @override
  @JsonKey(defaultValue: 0.0)
  final double initialValue;
  @override
  @JsonKey(name: 'id')
  final String tokenId;
  @override
  @JsonKey(name: 'current_price')
  final double price;
  @override
  @JsonKey(defaultValue: 0.0)
  final double volume;

  @override
  String toString() {
    return 'RektometerModel(currentValue: $currentValue, initialValue: $initialValue, tokenId: $tokenId, price: $price, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RektometerModel &&
            const DeepCollectionEquality()
                .equals(other.currentValue, currentValue) &&
            const DeepCollectionEquality()
                .equals(other.initialValue, initialValue) &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentValue),
      const DeepCollectionEquality().hash(initialValue),
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$$_RektometerModelCopyWith<_$_RektometerModel> get copyWith =>
      __$$_RektometerModelCopyWithImpl<_$_RektometerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RektometerModelToJson(
      this,
    );
  }
}

abstract class _RektometerModel extends RektometerModel {
  factory _RektometerModel(
          {@JsonKey(defaultValue: 0.0) required final double currentValue,
          @JsonKey(defaultValue: 0.0) required final double initialValue,
          @JsonKey(name: 'id') required final String tokenId,
          @JsonKey(name: 'current_price') required final double price,
          @JsonKey(defaultValue: 0.0) required final double volume}) =
      _$_RektometerModel;
  _RektometerModel._() : super._();

  factory _RektometerModel.fromJson(Map<String, dynamic> json) =
      _$_RektometerModel.fromJson;

  @override
  @JsonKey(defaultValue: 0.0)
  double get currentValue;
  @override
  @JsonKey(defaultValue: 0.0)
  double get initialValue;
  @override
  @JsonKey(name: 'id')
  String get tokenId;
  @override
  @JsonKey(name: 'current_price')
  double get price;
  @override
  @JsonKey(defaultValue: 0.0)
  double get volume;
  @override
  @JsonKey(ignore: true)
  _$$_RektometerModelCopyWith<_$_RektometerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
