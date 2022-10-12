import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/portfolio_remote_dio_data_source.dart';
import 'package:rektometer/data/remote_data_sources/rektometer_remote_data_source.dart';
import 'package:rektometer/data/remote_data_sources/rektometer_remote_dio_data_source.dart';
import 'package:rektometer/data/remote_data_sources/search_token_remote_dio_data_source.dart';
import 'package:rektometer/data/remote_data_sources/trades_remote_data_source.dart';
import 'package:rektometer/domain/repositories/portfolio_repository.dart';
import 'package:rektometer/domain/repositories/rektometer_repository.dart';
import 'package:rektometer/domain/repositories/search_list_repository.dart';
import 'package:rektometer/domain/repositories/trades_repository.dart';
import 'package:rektometer/features/pages/details/cubit/cubit/details_cubit.dart';
import 'package:rektometer/features/pages/portfolio/cubit/portfolio_cubit.dart';
import 'package:rektometer/features/pages/rektometer/cubit/cubit/rektometer_cubit.dart';
import 'package:rektometer/features/pages/search/cubit/search_token_cubit.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  //Bloc
  getIt.registerFactory(() => PortfolioCubit(portfolioRepository: getIt()));
  getIt.registerFactory(() => RektometerCubit(rektometerRepository: getIt()));
  getIt.registerFactory(() => DetailsCubit(tradesRepository: getIt()));
  getIt.registerFactory(() => SearchTokenCubit(
      searchListRepository: getIt(), portfolioRepository: getIt()));

//Repositories
  getIt.registerFactory(() => PortfolioRepository(
      portfolioRemoteDataSource: getIt(),
      portfolioRemoteRetrofitDataSource: getIt()));
  getIt.registerFactory(() => RektometerRepository(
      rektometerRemoteDataSource: getIt(),
      rektometerRemoteRetrofitDataSource: getIt()));
  getIt.registerFactory(
      () => SearchListRepository(searchListRemoteDataSource: getIt()));
  getIt
      .registerFactory(() => TradesRepository(tradesRemoteDataSource: getIt()));

  //DataSources
  getIt.registerFactory(() => PortfolioRemoteDataSource());
  getIt.registerFactory(() => PortfolioRemoteRetrofitDataSource(Dio()));
  getIt.registerFactory(() => RektometerRemoteDataSource());
  getIt.registerFactory(() => RektometerRemoteRetrofitDataSource(Dio()));
  getIt.registerFactory(() => SearchListRemoteRetrofitDataSource(Dio()));
  getIt.registerFactory(() => TradesRemoteDataSource());
}
