import 'package:dio/dio.dart';
import 'package:rektometer/app/domain/models/search_list_model.dart';
import 'package:retrofit/retrofit.dart';

part 'search_token_remote_data_source.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3/coins")
abstract class SearchListRemoteRetrofitDataSource {
  factory SearchListRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _SearchListRemoteRetrofitDataSource;

  @GET("/list?")
  Future<List<SearchListModel>> getTokenListData();
}

// class SearchListRemoteDataSource {
//   Future<List<Map<String, dynamic>>?> getTokenListData() async {
//     try {
//       final response = await Dio()
//           .get<List<dynamic>>('https://api.coingecko.com/api/v3/coins/list?');
//       final listDynamic = response.data;
//       if (listDynamic == null) {
//         return null;
//       }
//       return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//     } on DioError catch (error) {
//       throw Exception(error.response?.data ?? 'Error');
//     }
//   }
// }
