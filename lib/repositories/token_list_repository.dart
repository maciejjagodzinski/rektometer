import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
import 'package:rektometer/models/token_list_model.dart';

class TokenListRepository {
  TokenListRepository(this._tokenListRemoteDataSource);

  final TokenListRemoteDataSource _tokenListRemoteDataSource;

  Future<TokenListModel?> getTokenListModel() async {
    final responseData = await _tokenListRemoteDataSource.getTokenListData();
    if (responseData == null) {
      return null;
    }
    final name = responseData['name'] as String;
    final symbol = responseData['symbol'] as String;
    final id = responseData['id'] as String;
    return TokenListModel(id: id, symbol: symbol, name: name);
  }
}
