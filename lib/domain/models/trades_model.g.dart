// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'trades_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TradeModel _$$_TradeModelFromJson(Map<String, dynamic> json) =>
    _$_TradeModel(
      tradeDocumentId: json['tradeDocumentId'] as String,
      tradeTokenId: json['tradeTokenId'] as String,
      volume: (json['volume'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_TradeModelToJson(_$_TradeModel instance) =>
    <String, dynamic>{
      'tradeDocumentId': instance.tradeDocumentId,
      'tradeTokenId': instance.tradeTokenId,
      'volume': instance.volume,
      'price': instance.price,
      'date': instance.date.toIso8601String(),
      'type': instance.type,
    };
