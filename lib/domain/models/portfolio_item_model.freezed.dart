// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PortfolioItemModel _$PortfolioItemModelFromJson(Map<String, dynamic> json) {
  return _PortfolioItemModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioItemModel {
  @JsonKey(name: 'id')
  String get tokenId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price', defaultValue: 0.0)
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
  double? get priceChange => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double? get volume => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get investmentDocumentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioItemModelCopyWith<PortfolioItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioItemModelCopyWith<$Res> {
  factory $PortfolioItemModelCopyWith(
          PortfolioItemModel value, $Res Function(PortfolioItemModel) then) =
      _$PortfolioItemModelCopyWithImpl<$Res, PortfolioItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String tokenId,
      String image,
      String name,
      String symbol,
      @JsonKey(name: 'current_price', defaultValue: 0.0) double? price,
      @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
      double? priceChange,
      @JsonKey(defaultValue: 0.0) double? volume,
      @JsonKey(defaultValue: '') String investmentDocumentId});
}

/// @nodoc
class _$PortfolioItemModelCopyWithImpl<$Res, $Val extends PortfolioItemModel>
    implements $PortfolioItemModelCopyWith<$Res> {
  _$PortfolioItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? image = null,
    Object? name = null,
    Object? symbol = null,
    Object? price = freezed,
    Object? priceChange = freezed,
    Object? volume = freezed,
    Object? investmentDocumentId = null,
  }) {
    return _then(_value.copyWith(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentDocumentId: null == investmentDocumentId
          ? _value.investmentDocumentId
          : investmentDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioItemModelImplCopyWith<$Res>
    implements $PortfolioItemModelCopyWith<$Res> {
  factory _$$PortfolioItemModelImplCopyWith(_$PortfolioItemModelImpl value,
          $Res Function(_$PortfolioItemModelImpl) then) =
      __$$PortfolioItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String tokenId,
      String image,
      String name,
      String symbol,
      @JsonKey(name: 'current_price', defaultValue: 0.0) double? price,
      @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
      double? priceChange,
      @JsonKey(defaultValue: 0.0) double? volume,
      @JsonKey(defaultValue: '') String investmentDocumentId});
}

/// @nodoc
class __$$PortfolioItemModelImplCopyWithImpl<$Res>
    extends _$PortfolioItemModelCopyWithImpl<$Res, _$PortfolioItemModelImpl>
    implements _$$PortfolioItemModelImplCopyWith<$Res> {
  __$$PortfolioItemModelImplCopyWithImpl(_$PortfolioItemModelImpl _value,
      $Res Function(_$PortfolioItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenId = null,
    Object? image = null,
    Object? name = null,
    Object? symbol = null,
    Object? price = freezed,
    Object? priceChange = freezed,
    Object? volume = freezed,
    Object? investmentDocumentId = null,
  }) {
    return _then(_$PortfolioItemModelImpl(
      tokenId: null == tokenId
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceChange: freezed == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double?,
      investmentDocumentId: null == investmentDocumentId
          ? _value.investmentDocumentId
          : investmentDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioItemModelImpl extends _PortfolioItemModel {
  _$PortfolioItemModelImpl(
      {@JsonKey(name: 'id') required this.tokenId,
      required this.image,
      required this.name,
      required this.symbol,
      @JsonKey(name: 'current_price', defaultValue: 0.0) required this.price,
      @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
      required this.priceChange,
      @JsonKey(defaultValue: 0.0) required this.volume,
      @JsonKey(defaultValue: '') required this.investmentDocumentId})
      : super._();

  factory _$PortfolioItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioItemModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String tokenId;
  @override
  final String image;
  @override
  final String name;
  @override
  final String symbol;
  @override
  @JsonKey(name: 'current_price', defaultValue: 0.0)
  final double? price;
  @override
  @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
  final double? priceChange;
  @override
  @JsonKey(defaultValue: 0.0)
  final double? volume;
  @override
  @JsonKey(defaultValue: '')
  final String investmentDocumentId;

  @override
  String toString() {
    return 'PortfolioItemModel(tokenId: $tokenId, image: $image, name: $name, symbol: $symbol, price: $price, priceChange: $priceChange, volume: $volume, investmentDocumentId: $investmentDocumentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioItemModelImpl &&
            (identical(other.tokenId, tokenId) || other.tokenId == tokenId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.investmentDocumentId, investmentDocumentId) ||
                other.investmentDocumentId == investmentDocumentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenId, image, name, symbol,
      price, priceChange, volume, investmentDocumentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioItemModelImplCopyWith<_$PortfolioItemModelImpl> get copyWith =>
      __$$PortfolioItemModelImplCopyWithImpl<_$PortfolioItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioItemModelImplToJson(
      this,
    );
  }
}

abstract class _PortfolioItemModel extends PortfolioItemModel {
  factory _PortfolioItemModel(
      {@JsonKey(name: 'id') required final String tokenId,
      required final String image,
      required final String name,
      required final String symbol,
      @JsonKey(name: 'current_price', defaultValue: 0.0)
      required final double? price,
      @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
      required final double? priceChange,
      @JsonKey(defaultValue: 0.0) required final double? volume,
      @JsonKey(defaultValue: '')
      required final String investmentDocumentId}) = _$PortfolioItemModelImpl;
  _PortfolioItemModel._() : super._();

  factory _PortfolioItemModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioItemModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get tokenId;
  @override
  String get image;
  @override
  String get name;
  @override
  String get symbol;
  @override
  @JsonKey(name: 'current_price', defaultValue: 0.0)
  double? get price;
  @override
  @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0)
  double? get priceChange;
  @override
  @JsonKey(defaultValue: 0.0)
  double? get volume;
  @override
  @JsonKey(defaultValue: '')
  String get investmentDocumentId;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioItemModelImplCopyWith<_$PortfolioItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
