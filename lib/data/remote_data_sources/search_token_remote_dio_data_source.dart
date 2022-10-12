import 'package:dio/dio.dart';
import 'package:rektometer/app/domain/models/search_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_token_remote_dio_data_source.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3/coins")
abstract class SearchListRemoteRetrofitDataSource {
  factory SearchListRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _SearchListRemoteRetrofitDataSource;

  @GET("/list?")
  Future<List<SearchListModel>> getTokenListData();
}
