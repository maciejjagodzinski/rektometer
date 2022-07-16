class TrackerModel {
  TrackerModel(
      {required this.tokenId,
      required this.image,
      required this.name,
      required this.price,
      required this.priceChange,
      required this.volume,
      required this.value});

  final String tokenId;
  final String image;
  final String name;
  final double price;
  final double priceChange;
  final double volume;
  final double value;

  TrackerModel.fromJson(Map<String, dynamic> json)
      : tokenId = json['id'],
        image = json['image'],
        name = json['name'],
        price = json['current_price'] + 0.0,
        priceChange = json['price_change_percentage_24h'] + 0.0,
        volume = 1.1,
        value = 1.2;
}
