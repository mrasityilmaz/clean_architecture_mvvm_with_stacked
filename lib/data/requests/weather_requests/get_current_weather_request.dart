import 'package:my_coding_setup/core/constants/api_constants.dart';
import 'package:my_coding_setup/env/env.dart';
import 'package:rest_api_package/requests/rest_api_request.dart';

final class GetCurrentWeatherRequest extends IRestApiRequest {
  GetCurrentWeatherRequest({
    this.lat = 0,
    this.lon = 0,
  }) {
    baseUrl = APIConstants.baseURL;
    endPoint = 'weather';
    requestMethod = RequestMethod.GET;

    queryParameters = {
      'lat': lat,
      'lon': lon,
      'appid': Env.apiKey,
      'units': 'metric',
    };
  }
  final double lat;
  final double lon;
}
