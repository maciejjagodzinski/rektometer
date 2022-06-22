import 'package:dio/dio.dart';

class TokenListRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getTokenListData() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.coingecko.com/api/v3/coins/list?');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
