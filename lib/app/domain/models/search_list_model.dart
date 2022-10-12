import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_list_model.freezed.dart';
part 'search_list_model.g.dart';

@freezed
class SearchListModel with _$SearchListModel {
  factory SearchListModel({
    required String name,
    required String id,
    required String symbol,
  }) = _SearchListModel;

  factory SearchListModel.fromJson(Map<String, dynamic> json) =>
      _$SearchListModelFromJson(json);
}
