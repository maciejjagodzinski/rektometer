class SearchListModel {
  SearchListModel({
    required this.name,
    required this.id,
    required this.symbol,
  });
  final String name;
  final String id;
  final String symbol;

  SearchListModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        symbol = json['symbol'];
}
