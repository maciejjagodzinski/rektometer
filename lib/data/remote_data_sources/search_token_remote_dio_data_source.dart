import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:rektometer/domain/models/search_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_token_remote_dio_data_source.g.dart';

@injectable
@RestApi()
abstract class SearchListRemoteRetrofitDataSource {
  @factoryMethod
  factory SearchListRemoteRetrofitDataSource(Dio dio) =
      _SearchListRemoteRetrofitDataSource;

  @GET("/list?")
  Future<List<SearchListModel>> getTokenListData();
}
