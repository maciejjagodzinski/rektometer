// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote_data_sources/portfolio_remote_data_source.dart' as _i3;
import '../data/remote_data_sources/portfolio_remote_dio_data_source.dart'
    as _i10;
import '../data/remote_data_sources/rektometer_remote_data_source.dart' as _i4;
import '../data/remote_data_sources/rektometer_remote_dio_data_source.dart'
    as _i12;
import '../data/remote_data_sources/search_token_remote_dio_data_source.dart'
    as _i14;
import '../data/remote_data_sources/trades_remote_data_source.dart' as _i6;
import '../domain/repositories/portfolio_repository.dart' as _i11;
import '../domain/repositories/rektometer_repository.dart' as _i13;
import '../domain/repositories/search_list_repository.dart' as _i15;
import '../domain/repositories/trades_repository.dart' as _i7;
import '../features/cubit/root_cubit.dart' as _i5;
import '../features/pages/details/cubit/cubit/details_cubit.dart' as _i8;
import '../features/pages/portfolio/cubit/portfolio_cubit.dart' as _i17;
import '../features/pages/rektometer/cubit/cubit/rektometer_cubit.dart' as _i18;
import '../features/pages/search/cubit/search_token_cubit.dart' as _i16;
import 'injection_container.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i5.RootCubit>(() => _i5.RootCubit());
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i6.TradesRemoteDataSource>(() => _i6.TradesRemoteDataSource());
  gh.factory<_i7.TradesRepository>(() => _i7.TradesRepository(
      tradesRemoteDataSource: get<_i6.TradesRemoteDataSource>()));
  gh.factory<_i8.DetailsCubit>(
      () => _i8.DetailsCubit(tradesRepository: get<_i7.TradesRepository>()));
  gh.lazySingleton<_i9.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i10.PortfolioRemoteRetrofitDataSource>(
      () => _i10.PortfolioRemoteRetrofitDataSource(get<_i9.Dio>()));
  gh.factory<_i11.PortfolioRepository>(() => _i11.PortfolioRepository(
        portfolioRemoteDataSource: get<_i3.PortfolioRemoteDataSource>(),
        portfolioRemoteRetrofitDataSource:
            get<_i10.PortfolioRemoteRetrofitDataSource>(),
      ));
  gh.factory<_i12.RektometerRemoteRetrofitDataSource>(
      () => _i12.RektometerRemoteRetrofitDataSource(get<_i9.Dio>()));
  gh.factory<_i13.RektometerRepository>(() => _i13.RektometerRepository(
        rektometerRemoteDataSource: get<_i4.RektometerRemoteDataSource>(),
        rektometerRemoteRetrofitDataSource:
            get<_i12.RektometerRemoteRetrofitDataSource>(),
      ));
  gh.factory<_i14.SearchListRemoteRetrofitDataSource>(
      () => _i14.SearchListRemoteRetrofitDataSource(get<_i9.Dio>()));
  gh.factory<_i15.SearchListRepository>(() => _i15.SearchListRepository(
      searchListRemoteDataSource:
          get<_i14.SearchListRemoteRetrofitDataSource>()));
  gh.factory<_i16.SearchTokenCubit>(() => _i16.SearchTokenCubit(
        searchListRepository: get<_i15.SearchListRepository>(),
        portfolioRepository: get<_i11.PortfolioRepository>(),
      ));
  gh.factory<_i17.PortfolioCubit>(() => _i17.PortfolioCubit(
      portfolioRepository: get<_i11.PortfolioRepository>()));
  gh.factory<_i18.RektometerCubit>(() => _i18.RektometerCubit(
      rektometerRepository: get<_i13.RektometerRepository>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
