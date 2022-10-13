// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote_data_sources/portfolio_remote_data_source.dart' as _i3;
import '../data/remote_data_sources/portfolio_remote_dio_data_source.dart'
    as _i9;
import '../data/remote_data_sources/rektometer_remote_data_source.dart' as _i4;
import '../data/remote_data_sources/rektometer_remote_dio_data_source.dart'
    as _i11;
import '../data/remote_data_sources/search_token_remote_dio_data_source.dart'
    as _i13;
import '../data/remote_data_sources/trades_remote_data_source.dart' as _i5;
import '../domain/repositories/portfolio_repository.dart' as _i10;
import '../domain/repositories/rektometer_repository.dart' as _i12;
import '../domain/repositories/search_list_repository.dart' as _i14;
import '../domain/repositories/trades_repository.dart' as _i6;
import '../features/pages/details/cubit/cubit/details_cubit.dart' as _i7;
import '../features/pages/portfolio/cubit/portfolio_cubit.dart' as _i16;
import '../features/pages/rektometer/cubit/cubit/rektometer_cubit.dart' as _i17;
import '../features/pages/search/cubit/search_token_cubit.dart' as _i15;
import 'injection_container.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.PortfolioRemoteDataSource>(
      () => _i3.PortfolioRemoteDataSource());
  gh.factory<_i4.RektometerRemoteDataSource>(
      () => _i4.RektometerRemoteDataSource());
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i5.TradesRemoteDataSource>(() => _i5.TradesRemoteDataSource());
  gh.factory<_i6.TradesRepository>(() => _i6.TradesRepository(
      tradesRemoteDataSource: get<_i5.TradesRemoteDataSource>()));
  gh.factory<_i7.DetailsCubit>(
      () => _i7.DetailsCubit(tradesRepository: get<_i6.TradesRepository>()));
  gh.lazySingleton<_i8.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i9.PortfolioRemoteRetrofitDataSource>(
      () => _i9.PortfolioRemoteRetrofitDataSource(get<_i8.Dio>()));
  gh.factory<_i10.PortfolioRepository>(() => _i10.PortfolioRepository(
        portfolioRemoteDataSource: get<_i3.PortfolioRemoteDataSource>(),
        portfolioRemoteRetrofitDataSource:
            get<_i9.PortfolioRemoteRetrofitDataSource>(),
      ));
  gh.factory<_i11.RektometerRemoteRetrofitDataSource>(
      () => _i11.RektometerRemoteRetrofitDataSource(get<_i8.Dio>()));
  gh.factory<_i12.RektometerRepository>(() => _i12.RektometerRepository(
        rektometerRemoteDataSource: get<_i4.RektometerRemoteDataSource>(),
        rektometerRemoteRetrofitDataSource:
            get<_i11.RektometerRemoteRetrofitDataSource>(),
      ));
  gh.factory<_i13.SearchListRemoteRetrofitDataSource>(
      () => _i13.SearchListRemoteRetrofitDataSource(get<_i8.Dio>()));
  gh.factory<_i14.SearchListRepository>(() => _i14.SearchListRepository(
      searchListRemoteDataSource:
          get<_i13.SearchListRemoteRetrofitDataSource>()));
  gh.factory<_i15.SearchTokenCubit>(() => _i15.SearchTokenCubit(
        searchListRepository: get<_i14.SearchListRepository>(),
        portfolioRepository: get<_i10.PortfolioRepository>(),
      ));
  gh.factory<_i16.PortfolioCubit>(() => _i16.PortfolioCubit(
      portfolioRepository: get<_i10.PortfolioRepository>()));
  gh.factory<_i17.RektometerCubit>(() => _i17.RektometerCubit(
      rektometerRepository: get<_i12.RektometerRepository>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
