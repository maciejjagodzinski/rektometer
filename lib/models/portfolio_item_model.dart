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

  final String tokenId;
  final String image;
  final String name;
  final String symbol;
  final double price;
  final double priceChange;
  final double volume;
  final double value;
  final String investmentDocumentId;

  PortfolioItemModel.fromApiJson(Map<String, dynamic> json)
      : tokenId = json['id'],
        image = json['image'],
        name = json['name'],
        symbol = json['symbol'],
        price = json['current_price'] + 0.0,
        priceChange = json['price_change_percentage_24h'] + 0.0,
        volume = 0.0,
        value = 0.0,
        investmentDocumentId = '';
}
