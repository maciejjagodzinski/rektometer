import 'package:rektometer/data/remote_data_sources/search_token_remote_data_source.dart';
import 'package:rektometer/app/domain/models/search_list_model.dart';

class SearchListRepository {
  SearchListRepository(this._searchListRemoteDataSource);

  final SearchListRemoteDataSource _searchListRemoteDataSource;

  Future<List<SearchListModel>> getTokenListModel() async {
    final json = await _searchListRemoteDataSource.getTokenListData();

    if (json == null) {
      return [];
    }
    return json.map((e) => SearchListModel.fromJson(e)).toList();
  }
}
