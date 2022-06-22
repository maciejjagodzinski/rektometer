class TokenListModel {
  TokenListModel({
    required this.name,
    required this.id,
    required this.symbol,
  });
  final String name;
  final String id;
  final String symbol;

  TokenListModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        symbol = json['symbol'];
}
