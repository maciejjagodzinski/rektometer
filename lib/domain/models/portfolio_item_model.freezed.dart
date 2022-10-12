// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  @JsonKey(name: 'current_price')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChange => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get volume => throw _privateConstructorUsedError;
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
      _$PortfolioItemModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String tokenId,
      String image,
      String name,
      String symbol,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(name: 'price_change_percentage_24h') double priceChange,
      @JsonKey(defaultValue: 0.0) double volume,
      @JsonKey(defaultValue: '') String investmentDocumentId});
}

/// @nodoc
class _$PortfolioItemModelCopyWithImpl<$Res>
    implements $PortfolioItemModelCopyWith<$Res> {
  _$PortfolioItemModelCopyWithImpl(this._value, this._then);

  final PortfolioItemModel _value;
  // ignore: unused_field
  final $Res Function(PortfolioItemModel) _then;

  @override
  $Res call({
    Object? tokenId = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
    Object? priceChange = freezed,
    Object? volume = freezed,
    Object? investmentDocumentId = freezed,
  }) {
    return _then(_value.copyWith(
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      investmentDocumentId: investmentDocumentId == freezed
          ? _value.investmentDocumentId
          : investmentDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PortfolioItemModelCopyWith<$Res>
    implements $PortfolioItemModelCopyWith<$Res> {
  factory _$$_PortfolioItemModelCopyWith(_$_PortfolioItemModel value,
          $Res Function(_$_PortfolioItemModel) then) =
      __$$_PortfolioItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String tokenId,
      String image,
      String name,
      String symbol,
      @JsonKey(name: 'current_price') double price,
      @JsonKey(name: 'price_change_percentage_24h') double priceChange,
      @JsonKey(defaultValue: 0.0) double volume,
      @JsonKey(defaultValue: '') String investmentDocumentId});
}

/// @nodoc
class __$$_PortfolioItemModelCopyWithImpl<$Res>
    extends _$PortfolioItemModelCopyWithImpl<$Res>
    implements _$$_PortfolioItemModelCopyWith<$Res> {
  __$$_PortfolioItemModelCopyWithImpl(
      _$_PortfolioItemModel _value, $Res Function(_$_PortfolioItemModel) _then)
      : super(_value, (v) => _then(v as _$_PortfolioItemModel));

  @override
  _$_PortfolioItemModel get _value => super._value as _$_PortfolioItemModel;

  @override
  $Res call({
    Object? tokenId = freezed,
    Object? image = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? price = freezed,
    Object? priceChange = freezed,
    Object? volume = freezed,
    Object? investmentDocumentId = freezed,
  }) {
    return _then(_$_PortfolioItemModel(
      tokenId: tokenId == freezed
          ? _value.tokenId
          : tokenId // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange: priceChange == freezed
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as double,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      investmentDocumentId: investmentDocumentId == freezed
          ? _value.investmentDocumentId
          : investmentDocumentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PortfolioItemModel extends _PortfolioItemModel {
  _$_PortfolioItemModel(
      {@JsonKey(name: 'id') required this.tokenId,
      required this.image,
      required this.name,
      required this.symbol,
      @JsonKey(name: 'current_price') required this.price,
      @JsonKey(name: 'price_change_percentage_24h') required this.priceChange,
      @JsonKey(defaultValue: 0.0) required this.volume,
      @JsonKey(defaultValue: '') required this.investmentDocumentId})
      : super._();

  factory _$_PortfolioItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_PortfolioItemModelFromJson(json);

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
  @JsonKey(name: 'current_price')
  final double price;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChange;
  @override
  @JsonKey(defaultValue: 0.0)
  final double volume;
  @override
  @JsonKey(defaultValue: '')
  final String investmentDocumentId;

  @override
  String toString() {
    return 'PortfolioItemModel(tokenId: $tokenId, image: $image, name: $name, symbol: $symbol, price: $price, priceChange: $priceChange, volume: $volume, investmentDocumentId: $investmentDocumentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PortfolioItemModel &&
            const DeepCollectionEquality().equals(other.tokenId, tokenId) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.priceChange, priceChange) &&
            const DeepCollectionEquality().equals(other.volume, volume) &&
            const DeepCollectionEquality()
                .equals(other.investmentDocumentId, investmentDocumentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tokenId),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(priceChange),
      const DeepCollectionEquality().hash(volume),
      const DeepCollectionEquality().hash(investmentDocumentId));

  @JsonKey(ignore: true)
  @override
  _$$_PortfolioItemModelCopyWith<_$_PortfolioItemModel> get copyWith =>
      __$$_PortfolioItemModelCopyWithImpl<_$_PortfolioItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PortfolioItemModelToJson(
      this,
    );
  }
}

abstract class _PortfolioItemModel extends PortfolioItemModel {
  factory _PortfolioItemModel(
      {@JsonKey(name: 'id')
          required final String tokenId,
      required final String image,
      required final String name,
      required final String symbol,
      @JsonKey(name: 'current_price')
          required final double price,
      @JsonKey(name: 'price_change_percentage_24h')
          required final double priceChange,
      @JsonKey(defaultValue: 0.0)
          required final double volume,
      @JsonKey(defaultValue: '')
          required final String investmentDocumentId}) = _$_PortfolioItemModel;
  _PortfolioItemModel._() : super._();

  factory _PortfolioItemModel.fromJson(Map<String, dynamic> json) =
      _$_PortfolioItemModel.fromJson;

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
  @JsonKey(name: 'current_price')
  double get price;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double get priceChange;
  @override
  @JsonKey(defaultValue: 0.0)
  double get volume;
  @override
  @JsonKey(defaultValue: '')
  String get investmentDocumentId;
  @override
  @JsonKey(ignore: true)
  _$$_PortfolioItemModelCopyWith<_$_PortfolioItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
