import 'package:intl/intl.dart';

class TradeModel {
  TradeModel({
    required this.tradeDocumentId,
    required this.tradeTokenId,
    required this.volume,
    required this.price,
    required this.date,
    required this.type,
  });
  final String tradeDocumentId;
  final String tradeTokenId;
  final double volume;
  final double price;
  final DateTime date;
  final String type;

  String tradeDateFormatted() {
    return DateFormat.yMd().format(date);
  }
}
