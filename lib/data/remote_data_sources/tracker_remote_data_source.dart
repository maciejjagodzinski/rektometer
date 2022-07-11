import 'package:dio/dio.dart';

class TrackerRemoteDataSource {
  Future<List<Map<String, dynamic>>?> getTrackerData({
    required List<String> trackerIds,
  }) async {
    final response = await Dio().get<List<dynamic>>(
        'https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ids=$trackerIds&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
