class TradeModel {
  TradeModel({
    required this.tradeTokenId,
    required this.volume,
    required this.price,
  });

  final String tradeTokenId;
  final double volume;
  final double price;
}
