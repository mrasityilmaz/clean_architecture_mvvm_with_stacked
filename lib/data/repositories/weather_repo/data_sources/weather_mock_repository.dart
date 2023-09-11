import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:my_coding_setup/core/errors/errors.dart';
import 'package:my_coding_setup/core/extensions/dartz_extension.dart';
import 'package:my_coding_setup/core/services/mock_reader_service.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_model/weather_model.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/data_sources/iremote_repository.dart';
import 'package:my_coding_setup/injection/injection_container.dart';
import 'package:rest_api_package/requests/rest_api_request.dart';

@Environment('mock')
@LazySingleton(as: IWeatherRemoteRepository)
class WeatherMockRepository implements IWeatherRemoteRepository {
  @override
  Future<DataModel<WeatherModel>> getWeather({required double lat, required double long}) async {
    try {
      final response = await locator<MockReaderService>().callMock<WeatherModel>(
        'test/fixtures/weather_json.json',
        parseModel: WeatherModel.fromJson,
      );
      return Right(response);
    } catch (e) {
      if (e is Response) {
        return Left(UnExpectedFailure(data: e, errorMessage: e.statusMessage));
      } else {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<DataModel<List<WeatherForecastModel>>> getWeatherForecast({required double lat, required double long}) async {
    try {
      final response = await locator<MockReaderService>().callMock<List<WeatherForecastModel>>(
        'test/fixtures/five_days_forecast_json.json',
        parseModel: (json) {
          return (json['list'] as List).map((e) => WeatherForecastModel.fromJson(e as Map<String, dynamic>)).toList();
        },
      );
      return Right(response);
    } catch (e) {
      if (e is Response) {
        return Left(UnExpectedFailure(data: e, errorMessage: e.statusMessage));
      } else {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
