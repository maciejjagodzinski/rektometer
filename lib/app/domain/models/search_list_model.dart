import 'package:json_annotation/json_annotation.dart';

part 'search_list_model.g.dart';

@JsonSerializable()
class SearchListModel {
  SearchListModel({
    required this.name,
    required this.id,
    required this.symbol,
  });

  final String name;
  final String id;
  final String symbol;

  factory SearchListModel.fromJson(Map<String, dynamic> json) =>
      _$SearchListModelFromJson(json);

  Map<String, dynamic> toJson() => _$SearchListModelToJson(this);

  // SearchListModel.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       id = json['id'],
  //       symbol = json['symbol'];
}
