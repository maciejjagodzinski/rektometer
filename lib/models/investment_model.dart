class InvestmentModel {
  InvestmentModel({
    required this.id,
    required this.symbol,
    required this.priceChangePercentage,
    required this.name,
    required this.image,
    required this.tokenId,
    required this.currentPrice,
    required this.buyVolume,
    required this.buyPrice,
  });

  final String symbol;
  final double priceChangePercentage;
  final String name;
  final String image;
  final String tokenId;
  final double currentPrice;
  final double buyVolume;
  final double buyPrice;
  final String id;
}
