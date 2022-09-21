import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/models/added_token_model.dart';
import 'package:rektometer/models/portfolio_item_model.dart';
import 'package:rektometer/models/rektometer_model.dart';
import 'package:rektometer/models/trades_model.dart';

class PortfolioRepository {
  PortfolioRepository(this._portfolioRemoteDataSource);
  final PortfolioRemoteDataSource _portfolioRemoteDataSource;

  Future<List<PortfolioItemModel>> getPortfolioItemsApiData({
    required List<String> trackerIdsList,
  }) async {
    final jsonTracker = await _portfolioRemoteDataSource.getTrackerData(
        trackerIdsList: trackerIdsList);

    if (jsonTracker == null) {
      return [];
    }
    return jsonTracker.map((e) => PortfolioItemModel.fromJson(e)).toList();
  }

  Future<List<PortfolioItemModel>> getPortfolioItemModels() async {
    final addedTokenModels =
        await _portfolioRemoteDataSource.getRemoteInvestmentsData();
    final addedTokensIds = addedTokenModels!.docs
        .map((doc) {
          return AddedTokenModel(
            addedTokenId: doc['id'],
            investmentDocumentId: doc.id,
          );
        })
        .toList()
        .map((addedTokensIds) => addedTokensIds.addedTokenId)
        .toSet()
        .toList();

    final apiTrackerData = await _portfolioRemoteDataSource.getTrackerData(
        trackerIdsList: addedTokensIds);
    if (apiTrackerData == null) {
      return [];
    }
    final apiPortfolioItemModels =
        apiTrackerData.map((e) => PortfolioItemModel.fromJson(e)).toList();

    final firebaseTradeModels =
        await _portfolioRemoteDataSource.getRemoteTradesData();

    final listOfTradeModels = firebaseTradeModels!.docs.map((doc) {
      return PortfolioItemModel(
        tokenId: doc['id'],
        image: '',
        name: '',
        symbol: '',
        price: 0.0,
        priceChange: 0.0,
        volume: doc['volume'] + 0.0,
        value: 0.0,
      );
    }).toList();

    final firebasePortfolioItemModels = addedTokensIds.map((addedTokenId) {
      final tradeModels = listOfTradeModels
          .where((tradeModel) => tradeModel.tokenId == addedTokenId);

      if (tradeModels.isEmpty) {
        return PortfolioItemModel(
          tokenId: addedTokenId,
          image: '',
          name: '',
          symbol: '',
          price: 0.0,
          priceChange: 0.0,
          volume: 0.0,
          value: 0.0,
        );
      }

      return tradeModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image,
          name: value.name,
          symbol: value.symbol,
          price: value.price,
          priceChange: value.priceChange,
          volume: value.volume + element.volume,
          value: value.value,
        );
      });
    }).toList();

    final combinedPortfolioItemModels =
        apiPortfolioItemModels + firebasePortfolioItemModels;

    return addedTokensIds.map((addedTokenId) {
      final portfolioItemModels = combinedPortfolioItemModels.where(
          (combinedPortfolioItemModel) =>
              combinedPortfolioItemModel.tokenId == addedTokenId);

      return portfolioItemModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image + element.image,
          name: value.name + element.name,
          symbol: value.symbol + element.symbol,
          price: value.price + element.price,
          priceChange: value.priceChange + element.value,
          volume: value.volume + element.volume,
          value:
              (value.volume + element.volume) * (value.price + element.price),
        );
      });
    }).toList();
  }

  Future<void> addTokenToPortfolio({
    required String id,
  }) async {
    await _portfolioRemoteDataSource.add(id: id);
  }

  Future<void> addTradeModel({
    required String tradeTokenId,
    required String price,
    required String volume,
    required DateTime date,
    required String type,
  }) async {
    await _portfolioRemoteDataSource.addTrade(
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
    final firebaseTrades =
        await _portfolioRemoteDataSource.getRemoteTradesData();

    final allTrades = firebaseTrades!.docs.map((doc) {
      return TradeModel(
        tradeDocumentId: doc.id,
        tradeTokenId: doc['id'],
        volume: doc['volume'] + 0.0,
        price: doc['price'] + 0.0,
        date: doc['date'] as Timestamp,
        type: doc['type'],
      );
    }).toList();

    return allTrades.where((trade) => trade.tradeTokenId == id).toList();
  }

  Future<void> deleteTradeForSingleToken({
    required String tradeDocumentId,
  }) async {
    await _portfolioRemoteDataSource.deleteTradeDocument(
      tradeDocumentId: tradeDocumentId,
    );
  }

  ///

  Future<RektometerModel> getRektometerModel() async {
    final addedTokenModels =
        await _portfolioRemoteDataSource.getRemoteInvestmentsData();
    final addedTokensIds = addedTokenModels!.docs
        .map((doc) {
          return AddedTokenModel(
            addedTokenId: doc['id'],
            investmentDocumentId: doc.id,
          );
        })
        .toList()
        .map((addedTokensIds) => addedTokensIds.addedTokenId)
        .toSet()
        .toList();

    final apiTrackerData = await _portfolioRemoteDataSource.getTrackerData(
        trackerIdsList: addedTokensIds);
    if (apiTrackerData == null) {
      return RektometerModel(
        value: 0.0,
        initialValue: 0.0,
        roi: 0.0,
      );
    }
    final apiPortfolioItemModels =
        apiTrackerData.map((e) => PortfolioItemModel.fromJson(e)).toList();

    final firebaseTradeModels =
        await _portfolioRemoteDataSource.getRemoteTradesData();

    final listOfTradeModels = firebaseTradeModels!.docs.map((doc) {
      return PortfolioItemModel(
        tokenId: doc['id'],
        image: '',
        name: '',
        symbol: '',
        price: 0.0,
        priceChange: 0.0,
        volume: doc['volume'] + 0.0,
        value: 0.0,
      );
    }).toList();

    final firebasePortfolioItemModels = addedTokensIds.map((addedTokenId) {
      final tradeModels = listOfTradeModels
          .where((tradeModel) => tradeModel.tokenId == addedTokenId);

      if (tradeModels.isEmpty) {
        return PortfolioItemModel(
          tokenId: addedTokenId,
          image: '',
          name: '',
          symbol: '',
          price: 0.0,
          priceChange: 0.0,
          volume: 0.0,
          value: 0.0,
        );
      }

      return tradeModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image,
          name: value.name,
          symbol: value.symbol,
          price: value.price,
          priceChange: value.priceChange,
          volume: value.volume + element.volume,
          value: value.value,
        );
      });
    }).toList();

    final combinedPortfolioItemModels =
        apiPortfolioItemModels + firebasePortfolioItemModels;

    final portfolioItemModels = addedTokensIds.map((addedTokenId) {
      final portfolioItemModels = combinedPortfolioItemModels.where(
          (combinedPortfolioItemModel) =>
              combinedPortfolioItemModel.tokenId == addedTokenId);

      return portfolioItemModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image + element.image,
          name: value.name + element.name,
          symbol: value.symbol + element.symbol,
          price: value.price + element.price,
          priceChange: value.priceChange + element.value,
          volume: value.volume + element.volume,
          value:
              (value.volume + element.volume) * (value.price + element.price),
        );
      });
    }).toList();

    final value = portfolioItemModels.reduce((value, element) {
      return PortfolioItemModel(
        tokenId: '',
        image: '',
        name: '',
        symbol: '',
        price: 0.0,
        priceChange: 0.0,
        volume: 0.0,
        value: value.value + element.value,
      );
    }).value;

    final initialValue = firebaseTradeModels.docs.map((doc) {
      return RektometerModel(
        value: 0.0,
        initialValue: doc['price'] * doc['volume'] + 0.0,
        roi: 0.0,
      );
    }).reduce((value, element) {
      return RektometerModel(
          value: 0.0,
          initialValue: value.initialValue + element.initialValue + 0.0,
          roi: 0.0);
    }).initialValue;
    return RektometerModel(
      value: value + 0.0,
      initialValue: initialValue + 0.0,
      roi: ((value - initialValue) * 100 / initialValue) + 0.0,
    );
  }
}
