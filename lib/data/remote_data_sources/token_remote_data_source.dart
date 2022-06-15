import 'package:dio/dio.dart';

class TokenListRemoteDataSource {
  Future<Map<String, dynamic>?> getTokenListData() async {
    final response = await Dio().get<Map<String, dynamic>>(
        'https://api.coingecko.com/api/v3/coins/list?');
    return response.data;
  }
}
