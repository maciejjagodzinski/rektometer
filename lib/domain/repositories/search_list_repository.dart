import 'package:injectable/injectable.dart';
import 'package:rektometer/data/remote_data_sources/search_token_remote_dio_data_source.dart';
import 'package:rektometer/domain/models/search_list_model.dart';

class SearchListRepository {
  SearchListRepository({required this.searchListRemoteDataSource});

  final SearchListRemoteRetrofitDataSource searchListRemoteDataSource;

  Future<List<SearchListModel>> getTokenListModel() async {
    return searchListRemoteDataSource.getTokenListData();
  }
}
