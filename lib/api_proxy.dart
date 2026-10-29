import 'package:openapi/openapi.dart';
import 'package:simple_life/interceptors/AuthInterceptor.dart';
import 'package:simple_life/interceptors/HealthResponseInterceptor.dart'; // <-- MAKE SURE THIS IMPORT IS PRESENT
class ApiClient {
  late final Openapi _client;
  late final DefaultApi _defaultApi;

  DefaultApi get api => _defaultApi;

  ApiClient({
    String baseUrl = 'https://retail-api.staging.heirslifeassurance.com',
  }) {
    _client = Openapi(basePathOverride: baseUrl, interceptors:[AuthInterceptor(), HealthResponseInterceptor()]);
    _defaultApi = _client.getDefaultApi();
        // final baseDio = Dio();
        // baseDio.interceptors.add(AuthInterceptor());
  }

  void setAccessToken(String token) {
    _client.setBearerAuth('bearerAuth', token);
  }

  void setApiKeys({
    required String apiKey,
    required String appId,
  }) {
    _client
      ..setApiKey('apiKey', apiKey)
      ..setApiKey('appId', appId);
  }

  void clearAccessToken() {
    _client.removeBearerAuth('bearerAuth');
  }
}