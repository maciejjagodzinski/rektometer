import 'package:injectable/injectable.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/domain/models/portfolio_item_model.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_dio_data_source.dart';

class PortfolioRepository {
  PortfolioRepository({
    required this.portfolioRemoteDataSource,
    required this.portfolioRemoteRetrofitDataSource,
  });
  final PortfolioRemoteDataSource portfolioRemoteDataSource;
  final PortfolioRemoteRetrofitDataSource portfolioRemoteRetrofitDataSource;

  Future<List<PortfolioItemModel>> getPortfolioItemModels() async {
    final investmentsData =
        await portfolioRemoteDataSource.getRemoteInvestmentsData();
    final investmentsPortfolioItemModels = investmentsData!.docs.map((doc) {
      return PortfolioItemModel(
        tokenId: doc['id'],
        image: '',
        name: '',
        symbol: '',
        price: 0.0,
        priceChange: 0.0,
        volume: 0.0,
        investmentDocumentId: doc.id,
      );
    }).toList();

    final portfolioTokensIds = investmentsPortfolioItemModels
        .map((investmentsPortfolioItemModel) {
          return investmentsPortfolioItemModel.tokenId;
        })
        .toSet()
        .toList();

    final apiPortfolioItemModels = await portfolioRemoteRetrofitDataSource
        .getTrackerData(trackerIdsString: portfolioTokensIds.join(','));

    final tradesData = await portfolioRemoteDataSource.getRemoteTradesData();

    final allTradesPortfolioItemModels = tradesData!.docs.map((doc) {
      return PortfolioItemModel(
        tokenId: doc['id'],
        image: '',
        name: '',
        symbol: '',
        price: 0.0,
        priceChange: 0.0,
        volume: doc['volume'] + 0.0,
        investmentDocumentId: '',
      );
    }).toList();

    final combinedTradesPortfolioItemModels =
        portfolioTokensIds.map((portfolioTokenId) {
      final filteredTradesPortfolioItemModels = allTradesPortfolioItemModels
          .where((tradeModel) => tradeModel.tokenId == portfolioTokenId);

      if (filteredTradesPortfolioItemModels.isEmpty) {
        return PortfolioItemModel(
          tokenId: portfolioTokenId,
          image: '',
          name: '',
          symbol: '',
          price: 0.0,
          priceChange: 0.0,
          volume: 0.0,
          investmentDocumentId: '',
        );
      }

      return filteredTradesPortfolioItemModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image,
          name: value.name,
          symbol: value.symbol,
          price: value.price,
          priceChange: value.priceChange,
          volume: value.volume + element.volume,
          investmentDocumentId: '',
        );
      });
    }).toList();

    final combinedPortfolioItemModels = apiPortfolioItemModels +
        combinedTradesPortfolioItemModels +
        investmentsPortfolioItemModels;

    return portfolioTokensIds.map((portfolioTokensIds) {
      final portfolioItemModels = combinedPortfolioItemModels.where(
          (combinedPortfolioItemModel) =>
              combinedPortfolioItemModel.tokenId == portfolioTokensIds);

      return portfolioItemModels.reduce((value, element) {
        return PortfolioItemModel(
          tokenId: value.tokenId,
          image: value.image + element.image,
          name: value.name + element.name,
          symbol: value.symbol + element.symbol,
          price: value.price + element.price,
          priceChange: value.priceChange + element.value,
          volume: value.volume + element.volume,
          investmentDocumentId: element.investmentDocumentId,
        );
      });
    }).toList();
  }

  Future<void> addTokenToPortfolio({
    required String id,
  }) async {
    await portfolioRemoteDataSource.addInvestmentDocument(id: id);
  }

  Future<void> deleteTokenFromPortfolio({
    required String investmentDocumentId,
  }) async {
    await portfolioRemoteDataSource.deleteInvestmentDocument(
      investmentDocumentId: investmentDocumentId,
    );
  }
}
