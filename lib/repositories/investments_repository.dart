import 'package:firebase_auth/firebase_auth.dart';
import 'package:rektometer/data/remote_data_sources/investments_remote_data_source.dart';
import 'package:rektometer/models/investment_model.dart';

class InvestmentsRepository {
  InvestmentsRepository(this._investmentsRemoteDataSource);
  final InvestmentsRemoteDataSource _investmentsRemoteDataSource;

  Stream<List<InvestmentModel>> getInvestmentsStream() {
    return _investmentsRemoteDataSource
        .getInvestmentsData()
        .map((querySnapshot) {
      return querySnapshot!.docs.map((doc) {
        return InvestmentModel(
          id: doc.id,
          symbol: doc['symbol'],
          name: doc['name'],
          tokenId: doc['id'],
        );
      }).toList();
    });
  }

  Future<InvestmentModel> get({required String id}) async {
    final doc = await _investmentsRemoteDataSource.getRemoteDocs(id: id);
    return InvestmentModel(
      id: doc.id,
      symbol: doc['symbol'],
      name: doc['name'],
      tokenId: doc['id'],
    );
  }

  Future<void> addTokenToPortfolio({
    required String name,
    required String id,
    required String symbol,
  }) async {
    await _investmentsRemoteDataSource.add(name: name, id: id, symbol: symbol);
  }
}
