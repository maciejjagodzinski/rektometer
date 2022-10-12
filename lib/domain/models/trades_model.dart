import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'trades_model.freezed.dart';
part 'trades_model.g.dart';

@freezed
class TradeModel with _$TradeModel {
  const TradeModel._();
  factory TradeModel({
    required String tradeDocumentId,
    required String tradeTokenId,
    required double volume,
    required double price,
    required DateTime date,
    required String type,
  }) = _TradeModel;

  String tradeDateFormatted() {
    return DateFormat.yMd().format(date);
  }

  factory TradeModel.fromJson(Map<String, dynamic> json) =>
      _$TradeModelFromJson(json);
}
