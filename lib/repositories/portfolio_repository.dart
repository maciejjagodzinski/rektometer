import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/models/portfolio_model.dart';

class PortfolioRepository {
  PortfolioRepository(this._portfolioRemoteDataSource);
  final PortfolioRemoteDataSource _portfolioRemoteDataSource;

  Stream<List<PortfolioModel>> getPortfolioStream() {
    return _portfolioRemoteDataSource.getPortfolioData().map((querySnapshot) {
      return querySnapshot!.docs.map((doc) {
        return PortfolioModel(
          id: doc.id,
          tokenId: doc['id'],
        );
      }).toList();
    });
  }

  Future<PortfolioModel> get({required String id}) async {
    final doc = await _portfolioRemoteDataSource.getRemoteDocs(id: id);
    return PortfolioModel(
      id: doc.id,
      tokenId: doc['id'],
    );
  }

  Future<void> addTokenToPortfolio({
    required String id,
  }) async {
    await _portfolioRemoteDataSource.add(id: id);
  }
}
