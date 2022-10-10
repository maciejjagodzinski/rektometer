import 'package:json_annotation/json_annotation.dart';

part 'rektometer_model.g.dart';

@JsonSerializable()
class RektometerModel {
  RektometerModel({
    required this.currentValue,
    required this.initialValue,
    required this.tokenId,
    required this.price,
    required this.volume,
  });

  @JsonKey(defaultValue: 0.0)
  final double currentValue;

  @JsonKey(defaultValue: 0.0)
  final double initialValue;

  @JsonKey(name: 'id')
  final String tokenId;

  @JsonKey(name: 'current_price')
  final double price;

  @JsonKey(defaultValue: 0.0)
  final double volume;

  double get roi {
    return ((currentValue - initialValue) * 100 / initialValue) + 0.0;
  }

  factory RektometerModel.fromJson(Map<String, dynamic> json) =>
      _$RektometerModelFromJson(json);

  Map<String, dynamic> toJson() => _$RektometerModelToJson(this);

//   RektometerModel.fromApiJson(Map<String, dynamic> json)
//       : tokenId = json['id'],
//         price = json['current_price'] + 0.0,
//         initialValue = 0.0,
//         volume = 0.0,
//         currentValue = 0.0;
}
