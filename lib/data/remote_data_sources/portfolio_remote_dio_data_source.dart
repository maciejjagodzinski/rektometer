import 'package:dio/dio.dart';
import 'package:rektometer/domain/models/portfolio_item_model.dart';
import 'package:retrofit/retrofit.dart';

part 'portfolio_remote_dio_data_source.g.dart';

@RestApi(baseUrl: "https://api.coingecko.com/api/v3/coins")
abstract class PortfolioRemoteRetrofitDataSource {
  factory PortfolioRemoteRetrofitDataSource(Dio dio, {String baseUrl}) =
      _PortfolioRemoteRetrofitDataSource;

  @GET(
      "/markets?vs_currency=usd&ids={trackerIdsString}&order=market_cap_desc&per_page=250&page=1&sparkline=false&price_change_percentage=24h")
  Future<List<PortfolioItemModel>> getTrackerData({
    @Path('trackerIdsString') required String trackerIdsString,
  });
}
