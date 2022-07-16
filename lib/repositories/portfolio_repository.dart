import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/models/added_token_model.dart';
import 'package:rektometer/models/tracker_model.dart';

class PortfolioRepository {
  PortfolioRepository(this._portfolioRemoteDataSource);
  final PortfolioRemoteDataSource _portfolioRemoteDataSource;

  Future<List<String>> getAddedTokensIds() async {
    final tokenIds = await _portfolioRemoteDataSource.getRemoteDocs();
    return tokenIds!.docs
        .map((doc) {
          return AddedTokenModel(
            addedTokenId: doc['id'],
          );
        })
        .toList()
        .map((addedTokensIds) => addedTokensIds.addedTokenId)
        .toList();
  }

  Future<void> addTokenToPortfolio({
    required String id,
  }) async {
    await _portfolioRemoteDataSource.add(id: id);
  }

  Future<List<TrackerModel>> getTrackerModels({
    required List<String> trackerIdsList,
  }) async {
    final jsonTracker = await _portfolioRemoteDataSource.getTrackerData(
        trackerIdsList: trackerIdsList);

    if (jsonTracker == null) {
      return [];
    }
    return jsonTracker.map((e) => TrackerModel.fromJson(e)).toList();
  }
}
