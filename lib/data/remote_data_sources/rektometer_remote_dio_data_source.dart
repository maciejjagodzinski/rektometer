import 'package:dio/dio.dart';
import 'package:rektometer/app/domain/models/rektometer_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rektometer_remote_dio_data_source.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3/coins")
abstract class RektometerRemoteRetrofitDataSource {
  factory RektometerRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _RektometerRemoteRetrofitDataSource;

  @GET(
      "/markets?vs_currency=usd&ids={trackerIdsString}&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h")
  Future<List<RektometerModel>> getTrackerData({
    @Path('trackerIdsString') required String trackerIdsString,
  });
}
