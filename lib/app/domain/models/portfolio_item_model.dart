import 'package:json_annotation/json_annotation.dart';

part 'portfolio_item_model.g.dart';

@JsonSerializable()
class PortfolioItemModel {
  PortfolioItemModel({
    required this.tokenId,
    required this.image,
    required this.name,
    required this.symbol,
    required this.price,
    required this.priceChange,
    required this.volume,
    required this.value,
    required this.investmentDocumentId,
  });

  @JsonKey(name: 'id')
  final String tokenId;

  final String image;
  final String name;
  final String symbol;

  @JsonKey(name: 'current_price')
  final double price;

  @JsonKey(name: 'price_change_percentage_24h')
  final double priceChange;

  @JsonKey(defaultValue: 0.0)
  final double volume;

  @JsonKey(defaultValue: 0.0)
  final double value;

  @JsonKey(defaultValue: '')
  final String investmentDocumentId;

  factory PortfolioItemModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$PortfolioItemModelToJson(this);

  // PortfolioItemModel.fromApiJson(Map<String, dynamic> json)
  //     : tokenId = json['id'],
  //       image = json['image'],
  //       name = json['name'],
  //       symbol = json['symbol'],
  //       price = json['current_price'] + 0.0,
  //       priceChange = json['price_change_percentage_24h'] + 0.0,
  //       volume = 0.0,
  //       value = 0.0,
  //       investmentDocumentId = '';
}
