// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rektometer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RektometerModel _$$_RektometerModelFromJson(Map<String, dynamic> json) =>
    _$_RektometerModel(
      currentValue: (json['currentValue'] as num?)?.toDouble() ?? 0.0,
      initialValue: (json['initialValue'] as num?)?.toDouble() ?? 0.0,
      tokenId: json['id'] as String,
      price: (json['current_price'] as num).toDouble(),
      volume: (json['volume'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_RektometerModelToJson(_$_RektometerModel instance) =>
    <String, dynamic>{
      'currentValue': instance.currentValue,
      'initialValue': instance.initialValue,
      'id': instance.tokenId,
      'current_price': instance.price,
      'volume': instance.volume,
    };
