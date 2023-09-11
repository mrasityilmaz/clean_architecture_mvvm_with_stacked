import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_coding_setup/core/errors/errors.dart';
import 'package:my_coding_setup/core/extensions/dartz_extension.dart';
import 'package:my_coding_setup/core/platform/network_info.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_model/weather_model.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/data_sources/ilocal_repository.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/data_sources/iremote_repository.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/i_weather_repository.dart';

@LazySingleton(as: IWeatherRepository)
class WeatherRepository implements IWeatherRepository {
  const WeatherRepository({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });
  final IWeatherRemoteRepository remoteDataSource;
  final IWeatherLocalRepository localDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<DataModel<WeatherModel>> getWeather({required double lat, required double long}) async {
    if (await networkInfo.isConnected) {
      return await remoteDataSource.getWeather(lat: lat, long: long);
    } else {
      ///
      /// I dont have local data source so I will return other options
      ///
      return Left(NetworkFailure());
    }
  }

  @override
  Future<DataModel<List<WeatherForecastModel>>> getWeatherForecast({required double lat, required double long}) async {
    if (await networkInfo.isConnected) {
      return await remoteDataSource.getWeatherForecast(lat: lat, long: long);
    } else {
      ///
      /// I dont have local data source so I will return other options
      ///
      return Left(NetworkFailure());
    }
  }
}
