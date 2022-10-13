// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'portfolio_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortfolioItemModel _$$_PortfolioItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_PortfolioItemModel(
      tokenId: json['id'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      price: (json['current_price'] as num).toDouble(),
      priceChange: (json['price_change_percentage_24h'] as num).toDouble(),
      volume: (json['volume'] as num?)?.toDouble() ?? 0.0,
      investmentDocumentId: json['investmentDocumentId'] as String? ?? '',
    );

Map<String, dynamic> _$$_PortfolioItemModelToJson(
        _$_PortfolioItemModel instance) =>
    <String, dynamic>{
      'id': instance.tokenId,
      'image': instance.image,
      'name': instance.name,
      'symbol': instance.symbol,
      'current_price': instance.price,
      'price_change_percentage_24h': instance.priceChange,
      'volume': instance.volume,
      'investmentDocumentId': instance.investmentDocumentId,
    };
