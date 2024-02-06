// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rektometer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$RektometerModelCopyWithImpl<$Res, RektometerModel>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0.0) double currentValue,
      @JsonKey(defaultValue: 0.0) double initialValue,
      @JsonKey(name: 'id') String tokenId,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(defaultValue: 0.0) double volume});
}

/// @nodoc
class _$RektometerModelCopyWithImpl<$Res, $Val extends RektometerModel>
    implements $RektometerModelCopyWith<$Res> {
  _$RektometerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? initialValue = null,
    Object? tokenId = null,
    Object? price = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RektometerModelImplCopyWith<$Res>
    implements $RektometerModelCopyWith<$Res> {
  factory _$$RektometerModelImplCopyWith(_$RektometerModelImpl value,
          $Res Function(_$RektometerModelImpl) then) =
      __$$RektometerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0.0) double currentValue,
      @JsonKey(defaultValue: 0.0) double initialValue,
      @JsonKey(name: 'id') String tokenId,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(defaultValue: 0.0) double volume});
}

/// @nodoc
class __$$RektometerModelImplCopyWithImpl<$Res>
    extends _$RektometerModelCopyWithImpl<$Res, _$RektometerModelImpl>
    implements _$$RektometerModelImplCopyWith<$Res> {
  __$$RektometerModelImplCopyWithImpl(
      _$RektometerModelImpl _value, $Res Function(_$RektometerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? initialValue = null,
    Object? tokenId = null,
    Object? price = null,
    Object? volume = null,
  }) {
    return _then(_$RektometerModelImpl(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      initialValue: null == initialValue
          ? _value.initialValue
          : initialValue // ignore: cast_nullable_to_non_nullable
              as double,
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RektometerModelImpl extends _RektometerModel {
  _$RektometerModelImpl(
      {@JsonKey(defaultValue: 0.0) required this.currentValue,
      @JsonKey(defaultValue: 0.0) required this.initialValue,
      @JsonKey(name: 'id') required this.tokenId,
      @JsonKey(name: 'current_price') required this.price,
      @JsonKey(defaultValue: 0.0) required this.volume})
      : super._();

  factory _$RektometerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RektometerModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RektometerModelImpl &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.initialValue, initialValue) ||
                other.initialValue == initialValue) &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, currentValue, initialValue, tokenId, price, volume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RektometerModelImplCopyWith<_$RektometerModelImpl> get copyWith =>
      __$$RektometerModelImplCopyWithImpl<_$RektometerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RektometerModelImplToJson(
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
      _$RektometerModelImpl;
  _RektometerModel._() : super._();

  factory _RektometerModel.fromJson(Map<String, dynamic> json) =
      _$RektometerModelImpl.fromJson;

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
  _$$RektometerModelImplCopyWith<_$RektometerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
