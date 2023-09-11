// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/platform/network_info.dart' as _i7;
import '../core/services/mock_reader_service.dart' as _i6;
import '../data/repositories/weather_repo/data_sources/weather_http_repository.dart'
    as _i5;
import '../data/repositories/weather_repo/data_sources/weather_mock_repository.dart'
    as _i4;
import '../data/repositories/weather_repo/weather_repository.dart' as _i9;
import '../domain/repositories/weather_repository/data_sources/ilocal_repository.dart'
    as _i10;
import '../domain/repositories/weather_repository/data_sources/iremote_repository.dart'
    as _i3;
import '../domain/repositories/weather_repository/i_weather_repository.dart'
    as _i8;

const String _mock = 'mock';
const String _real = 'real';

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IWeatherRemoteRepository>(
    () => _i4.WeatherMockRepository(),
    registerFor: {_mock},
  );
  gh.lazySingleton<_i3.IWeatherRemoteRepository>(
    () => _i5.WeatherHttpRepository(),
    registerFor: {_real},
  );
  gh.lazySingleton<_i6.MockReaderService>(() => _i6.MockReaderService());
  gh.lazySingleton<_i7.NetworkInfo>(() => _i7.NetworkInfoImpl());
  gh.lazySingleton<_i8.IWeatherRepository>(() => _i9.WeatherRepository(
        remoteDataSource: gh<_i3.IWeatherRemoteRepository>(),
        localDataSource: gh<_i10.IWeatherLocalRepository>(),
        networkInfo: gh<_i7.NetworkInfo>(),
      ));
  return getIt;
}
