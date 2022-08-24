import 'package:cloud_firestore/cloud_firestore.dart';

class TradeModel {
  TradeModel({
    required this.tradeTokenId,
    required this.volume,
    required this.price,
    required this.date,
    required this.type,
  });

  final String tradeTokenId;
  final double volume;
  final double price;
  final Timestamp date;
  final String type;
}
