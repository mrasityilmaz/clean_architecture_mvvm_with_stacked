import 'package:flutter/material.dart';
import 'package:my_coding_setup/core/enums/static_cities_enum.dart';
import 'package:my_coding_setup/core/extensions/dartz_extension.dart';
import 'package:my_coding_setup/data/models/weather_models/forecast_model/forecast_model.dart';
import 'package:my_coding_setup/data/models/weather_models/weather_model/weather_model.dart';
import 'package:my_coding_setup/domain/repositories/weather_repository/i_weather_repository.dart';
import 'package:my_coding_setup/injection/injection_container.dart';
import 'package:stacked/stacked.dart';

final class HomeViewModel extends BaseViewModel {
  ///
  /// Repositories Define
  ///
  final IWeatherRepository _weatherRepository = locator<IWeatherRepository>();

  ///
  /// UI Global Variables
  ///
  final ScrollController scrollController = ScrollController();

  ///
  ///  Weather Model and Weather Forecast Model
  ///
  @protected
  WeatherModel? _weatherModel;

  @protected
  List<WeatherForecastModel>? _weatherForecastModel;

  DateTime? _selectedDetailDate;

  Map<DateTime, List<WeatherForecastModel>> _weatherForecastModelGroupByDate = {};

  StaticCitiesEnum _selectedCity = StaticCitiesEnum.ISTANBUL;

  int _selectedCityIndex = 0;

  ///
  ///
  /// Getters
  ///
  ///
  WeatherModel? get weatherModel => _weatherModel;

  List<WeatherForecastModel>? get weatherForecastModel => _weatherForecastModel;

  DateTime? get selectedDetailDate => _selectedDetailDate;

  Map<DateTime, List<WeatherForecastModel>> get weatherForecastModelGroupByDate => _weatherForecastModelGroupByDate;

  List<StaticCitiesEnum> get cities => [StaticCitiesEnum.ISTANBUL, StaticCitiesEnum.CUPERTINO, StaticCitiesEnum.QATAR, StaticCitiesEnum.ANTARCTICA];

  StaticCitiesEnum get selectedCity => _selectedCity;

  int get selectedCityIndex => _selectedCityIndex;

  ///
  ///
  /// ViewModel Init Function
  ///
  Future<void> init() async {
    await _changeCity(StaticCitiesEnum.ISTANBUL);

    setInitialised(true);
  }

  ///
  /// Public Setter Functions
  ///

  ///
  /// Set Selected Detail Date - Bottom Section Selected Date Change
  ///
  void setSelectedDetailDate(DateTime dateTime) {
    _selectedDetailDate = dateTime;
    notifyListeners();
  }

  ///
  /// When data is fetched from the server, the data is grouped by date.
  ///
  void _setWeatherForecastGroupByDateValue() {
    final Map<DateTime, List<WeatherForecastModel>> result = {};

    if (_weatherForecastModel == null) {
      _weatherForecastModelGroupByDate = result;
      return;
    } else {
      for (final element in _weatherForecastModel!) {
        final DateTime date = DateTime(element.calculatedAt.year, element.calculatedAt.month, element.calculatedAt.day);

        if (result.containsKey(date)) {
          result[date]!.add(element);
        } else {
          result[date] = [element];
        }
      }

      _weatherForecastModelGroupByDate = result;
    }
  }

  Future<void> setSelectedCity(int index, StaticCitiesEnum city) async {
    _selectedCity = city;
    _selectedCityIndex = index;

    await _changeCity(city);

    notifyListeners();
  }

  Future<void> _changeCity(StaticCitiesEnum city) async {
    await runBusyFuture(
      Future.delayed(
        const Duration(milliseconds: 900),
        () {
          return _getWeatherDatas(selectedCity: city);
        },
      ),
    );

    _setWeatherForecastGroupByDateValue();
  }

  ///
  /// Private Getter Functions
  ///

  Future<void> _getWeatherDatas({required StaticCitiesEnum selectedCity}) async {
    final result = await Future.wait([
      _getWeather(selectedCity: selectedCity),
      _getWeatherForecast(selectedCity: selectedCity),
    ]);

    for (final element in result) {
      if (element is DataModel<WeatherModel>) {
        _weatherModel = element.isRight() ? element.asRight() : null;
      } else if (element is DataModel<List<WeatherForecastModel>>) {
        _weatherForecastModel = element.isRight() ? element.asRight() : null;
      }
    }
  }

  Future<DataModel<WeatherModel>> _getWeather({required StaticCitiesEnum selectedCity}) async {
    final result = await _weatherRepository.getWeather(lat: selectedCity.lat, long: selectedCity.long);

    return result;
  }

  Future<DataModel<List<WeatherForecastModel>>?> _getWeatherForecast({required StaticCitiesEnum selectedCity}) async {
    final result = await _weatherRepository.getWeatherForecast(lat: selectedCity.lat, long: selectedCity.long);

    return result;
  }
}
