import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  @EnviedField(varName: 'APIKEY', obfuscate: true)
  static final String apiKey = _Env.apiKey;
}
