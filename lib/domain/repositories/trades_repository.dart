import 'package:rektometer/data/remote_data_sources/trades_remote_data_source.dart';
import 'package:rektometer/domain/models/trades_model.dart';

class TradesRepository {
  TradesRepository(this._tradesRemoteDataSource);

  final TradesRemoteDataSource _tradesRemoteDataSource;

  Future<void> addTradeModel({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    await _tradesRemoteDataSource.addTradeDocument(
      tradeTokenId: tradeTokenId,
      price: price,
      volume: volume,
      date: date,
      type: type,
    );
  }

  Future<List<TradeModel>> getTradesForSingleTokenData({
    required String id,
  }) async {
    final firebaseTrades = await _tradesRemoteDataSource.getRemoteTradesData();

    final allTrades = firebaseTrades!.docs.map((doc) {
      return TradeModel(
        tradeDocumentId: doc.id,
        tradeTokenId: doc['id'],
        volume: doc['volume'] + 0.0,
        price: doc['price'] + 0.0,
        date: doc['date'].toDate(),
        type: doc['type'],
      );
    }).toList();

    return allTrades.where((trade) => trade.tradeTokenId == id).toList();
  }

  Future<void> deleteTradeForSingleToken({
    required String tradeDocumentId,
  }) async {
    await _tradesRemoteDataSource.deleteTradeDocument(
      tradeDocumentId: tradeDocumentId,
    );
  }
}
