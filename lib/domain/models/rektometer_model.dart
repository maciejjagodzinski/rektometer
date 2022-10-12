import 'package:freezed_annotation/freezed_annotation.dart';

part 'rektometer_model.freezed.dart';
part 'rektometer_model.g.dart';

@freezed
class RektometerModel with _$RektometerModel {
  const RektometerModel._();
  factory RektometerModel({
    @JsonKey(defaultValue: 0.0) required double currentValue,
    @JsonKey(defaultValue: 0.0) required double initialValue,
    @JsonKey(name: 'id') required String tokenId,
    @JsonKey(name: 'current_price') required double price,
    @JsonKey(defaultValue: 0.0) required double volume,
  }) = _RektometerModel;

  double get roi {
    return ((currentValue - initialValue) * 100 / initialValue) + 0.0;
  }

  factory RektometerModel.fromJson(Map<String, dynamic> json) =>
      _$RektometerModelFromJson(json);
}
