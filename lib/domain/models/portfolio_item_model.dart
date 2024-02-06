import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_item_model.g.dart';
part 'portfolio_item_model.freezed.dart';

@freezed
class PortfolioItemModel with _$PortfolioItemModel {
  const PortfolioItemModel._();
  factory PortfolioItemModel({
    @JsonKey(name: 'id') required String tokenId,
    required String image,
    required String name,
    required String symbol,
    @JsonKey(name: 'current_price', defaultValue: 0.0) required double? price,
    @JsonKey(name: 'price_change_percentage_24h', defaultValue: 0.0) required double? priceChange,
    @JsonKey(defaultValue: 0.0) required double? volume,
    @JsonKey(defaultValue: '') required String investmentDocumentId,
  }) = _PortfolioItemModel;

  double get value {
    return price! * volume!;
  }

  factory PortfolioItemModel.fromJson(Map<String, dynamic> json) => _$PortfolioItemModelFromJson(json);
}
