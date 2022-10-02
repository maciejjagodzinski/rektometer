class RektometerModel {
  RektometerModel({
    required this.currentValue,
    required this.initialValue,
    required this.roi,
    required this.tokenId,
    required this.price,
    required this.volume,
  });

  final double currentValue;
  final double initialValue;
  final double roi;
  final String tokenId;
  final double price;
  final double volume;

  RektometerModel.fromApiJson(Map<String, dynamic> json)
      : tokenId = json['id'],
        price = json['current_price'] + 0.0,
        roi = 0.0,
        initialValue = 0.0,
        volume = 0.0,
        currentValue = 0.0;
}
