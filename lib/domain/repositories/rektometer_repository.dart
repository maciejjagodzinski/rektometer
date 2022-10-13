import 'package:injectable/injectable.dart';
import 'package:rektometer/data/remote_data_sources/rektometer_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/rektometer_remote_dio_data_source.dart';
import 'package:rektometer/domain/models/rektometer_model.dart';

@injectable
class RektometerRepository {
  RektometerRepository(
      {required this.rektometerRemoteDataSource,
      required this.rektometerRemoteRetrofitDataSource});

  final RektometerRemoteDataSource rektometerRemoteDataSource;
  final RektometerRemoteRetrofitDataSource rektometerRemoteRetrofitDataSource;

  Future<RektometerModel> getRektometerModel() async {
    final investmentsTokensData =
        await rektometerRemoteDataSource.getRemoteInvestmentsData();

    final watchlistTokenIds = investmentsTokensData!.docs
        .map((doc) => doc['id'] as String)
        .toSet()
        .toList();

    final apiRektometerModels = await rektometerRemoteRetrofitDataSource
        .getTrackerData(trackerIdsString: watchlistTokenIds.join(','));

    final firebaseTradesData =
        await rektometerRemoteDataSource.getRemoteTradesData();

    final tradesVolumes = firebaseTradesData!.docs.map((doc) {
      return RektometerModel(
        tokenId: doc['id'],
        price: 0.0,
        volume: doc['volume'] + 0.0,
        currentValue: 0.0,
        initialValue: 0.0,
      );
    }).toList();

    final volumeCombinedRektometerModels =
        watchlistTokenIds.map((watchlistTokenId) {
      final trades =
          tradesVolumes.where((trade) => trade.tokenId == watchlistTokenId);

      if (trades.isEmpty) {
        return RektometerModel(
          tokenId: watchlistTokenId,
          price: 0.0,
          volume: 0.0,
          currentValue: 0.0,
          initialValue: 0.0,
        );
      }

      return trades.reduce((value, element) {
        return RektometerModel(
          tokenId: value.tokenId,
          price: value.price,
          volume: value.volume + element.volume,
          currentValue: value.currentValue,
          initialValue: 0.0,
        );
      });
    }).toList();

    final combinedRektometerModels =
        apiRektometerModels + volumeCombinedRektometerModels;

    final rektometerModels = watchlistTokenIds.map((watchlistTokenId) {
      final values = combinedRektometerModels.where(
          (combinedPortfolioItemModel) =>
              combinedPortfolioItemModel.tokenId == watchlistTokenId);

      return values.reduce((value, element) {
        return RektometerModel(
          tokenId: value.tokenId,
          price: value.price + element.price,
          volume: value.volume + element.volume,
          currentValue:
              (value.volume + element.volume) * (value.price + element.price),
          initialValue: 0.0,
        );
      });
    }).toList();

    final currentValue = rektometerModels.reduce((value, element) {
      return RektometerModel(
        tokenId: '',
        price: 0.0,
        volume: 0.0,
        currentValue: value.currentValue + element.currentValue,
        initialValue: 0.0,
      );
    }).currentValue;

    final initialValue = firebaseTradesData.docs.map((doc) {
      return RektometerModel(
        tokenId: '',
        price: 0.0,
        volume: 0.0,
        currentValue: 0.0,
        initialValue: doc['price'] * doc['volume'] + 0.0,
      );
    }).reduce((value, element) {
      return RektometerModel(
        tokenId: '',
        price: 0.0,
        volume: 0.0,
        currentValue: 0.0,
        initialValue: value.initialValue + element.initialValue + 0.0,
      );
    }).initialValue;

    return RektometerModel(
      tokenId: '',
      price: 0.0,
      volume: 0.0,
      currentValue: currentValue + 0.0,
      initialValue: initialValue + 0.0,
    );
  }
}
