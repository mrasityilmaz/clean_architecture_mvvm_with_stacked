// ignore_for_file: constant_identifier_names

enum StaticCitiesEnum {
  ISTANBUL(
    lat: 41.01159,
    long: 28.97173,
    cityName: 'Istanbul',
    countryName: 'TR',
  ),

  QATAR(
    lat: 25.52539,
    long: 51.21754,
    cityName: 'Qatar',
    countryName: 'QA',
  ),

  ANTARCTICA(
    lat: 83.80004,
    long: 153.33614,
    cityName: 'Antarctica',
    countryName: 'AQ',
  ),
  CUPERTINO(
    lat: 37.31852,
    long: 122.02986,
    cityName: 'Cupertino',
    countryName: 'USA',
  );

  const StaticCitiesEnum({required this.lat, required this.long, required this.cityName, required this.countryName});
  final double lat;
  final double long;

  final String cityName;
  final String countryName;
}
