import 'package:dio/dio.dart';

class SearchListRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getTokenListData() async {
    try {
      final response = await Dio()
          .get<List<dynamic>>('https://api.coingecko.com/api/v3/coins/list?');
      final listDynamic = response.data;
      if (listDynamic == null) {
        return null;
      }
      return listDynamic.map((e) => e as Map<String, dynamic>).toList();
    } on DioError catch (error) {
      throw Exception(error.response?.data ?? 'Error');
    }
  }
}
