// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trades_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeModelImpl _$$TradeModelImplFromJson(Map<String, dynamic> json) =>
    _$TradeModelImpl(
      tradeDocumentId: json['tradeDocumentId'] as String,
      tradeTokenId: json['tradeTokenId'] as String,
      volume: (json['volume'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$TradeModelImplToJson(_$TradeModelImpl instance) =>
    <String, dynamic>{
      'tradeDocumentId': instance.tradeDocumentId,
      'tradeTokenId': instance.tradeTokenId,
      'volume': instance.volume,
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'type': instance.type,
    };
