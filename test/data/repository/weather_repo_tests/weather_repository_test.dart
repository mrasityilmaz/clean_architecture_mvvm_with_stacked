import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_coding_setup/core/errors/errors.dart';
import 'package:my_coding_setup/core/extensions/dartz_extension.dart';
import 'package:my_coding_setup/data/models/weather_models/coordinate_model/coordinate_model.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_model/weather_model.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/i_weather_repository.dart';
import 'package:my_coding_setup/injection/injection_container.dart';

void main() async {
  const double lat = 39.748132880044764;
  const double long = 39.4833083781376;
  WidgetsFlutterBinding.ensureInitialized();

  ///
  ///
  ///  Group Test for Mock Data Source
  ///

  group('Weather Mock Tests', () {
    late IWeatherRepository weatherRepository;
    setUp(() async {
      await configureDependencies(defaultEnv: 'mock');
      weatherRepository = locator<IWeatherRepository>();
    });
    test('Get Weather Function Test - with wrong coord', () async {
      final result = await weatherRepository.getWeather(lat: 0, long: 0);

      expect(result, isA<Right<Failure, WeatherModel>>(), reason: 'Response is not Succesfuly');
      expect(
        result.asRight(),
        isA<WeatherModel>(),
        reason: 'Response is not WeatherModel type',
      );
      expect(result.asRight().coordinateDetail.latitude, equals(const Coord(latitude: lat, longitude: long).latitude), reason: 'Response is not expected latitude');
      expect(result.asRight().coordinateDetail.longitude, equals(const Coord(latitude: lat, longitude: long).longitude), reason: 'Response is not expected longitude');
    });

    test('Get Weather Function Test ', () async {
      final result = await weatherRepository.getWeather(lat: lat, long: long);

      expect(result, isA<Right<Failure, WeatherModel>>(), reason: 'Response is not Succesfuly');
      expect(
        result.asRight(),
        isA<WeatherModel>(),
        reason: 'Response is not WeatherModel type',
      );
      expect(result.asRight().coordinateDetail.latitude, equals(const Coord(latitude: lat, longitude: long).latitude), reason: 'Response is not expected latitude');
      expect(result.asRight().coordinateDetail.longitude, equals(const Coord(latitude: lat, longitude: long).longitude), reason: 'Response is not expected longitude');
    });

    test('Get Weather Forecast Function Test ', () async {
      final result = await weatherRepository.getWeatherForecast(lat: lat, long: long);

      expect(result, isA<Right<Failure, List<WeatherForecastModel>>>(), reason: 'Response is not Succesfuly');
      expect(
        result.asRight(),
        isA<List<WeatherForecastModel>>(),
        reason: 'Response is not WeatherForecastModel type',
      );
    });
  });

  ///
  /// Locator Reset bc we need to change environment to real
  ///

  tearDown(locator.reset);

  ///
  ///
  ///  Group Test for Real Data Source
  ///
  group('Weather Real Tests', () {
    late IWeatherRepository weatherRepository;
    setUp(() async {
      await configureDependencies(defaultEnv: 'real');
      weatherRepository = locator<IWeatherRepository>();
    });
    test('Get Weather Function Test', () async {
      final result = await weatherRepository.getWeather(lat: lat, long: long);

      expect(result, isA<Right<Failure, WeatherModel>>(), reason: 'Response is not Succesfuly');
      expect(
        result.asRight(),
        isA<WeatherModel>(),
        reason: 'Response is not WeatherModel type',
      );
    });
  });
}
