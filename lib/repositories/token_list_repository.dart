import 'package:rektometer/data/remote_data_sources/token_remote_data_source.dart';
import 'package:rektometer/models/token_list_model.dart';

class TokenListRepository {
  TokenListRepository(this._tokenListRemoteDataSource);

  final TokenListRemoteDataSource _tokenListRemoteDataSource;

  Future<List<TokenListModel>> getTokenListModel() async {
    final json = await _tokenListRemoteDataSource.getTokenListData();

    if (json == null) {
      return [];
    }
    return json.map((e) => TokenListModel.fromJson(e)).toList();
  }
}
