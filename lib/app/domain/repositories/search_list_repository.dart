import 'package:rektometer/data/remote_data_sources/search_token_remote_dio_data_source.dart';
import 'package:rektometer/app/domain/models/search_list_model.dart';

class SearchListRepository {
  SearchListRepository(this._searchListRemoteDataSource);

  final SearchListRemoteRetrofitDataSource _searchListRemoteDataSource;

  Future<List<SearchListModel>> getTokenListModel() async {
    return _searchListRemoteDataSource.getTokenListData();
  }
}
