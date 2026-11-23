import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:openapi/openapi.dart';
import 'package:simple_life/interceptors/AuthInterceptor.dart';
import 'package:simple_life/interceptors/HealthResponseInterceptor.dart';
import 'package:simple_life/interceptors/loading_interceptor.dart';

class ApiClient {
  late final Openapi _client;
  late final DefaultApi _defaultApi;

  DefaultApi get api => _defaultApi;
  Dio get dio => _client.dio;
  Serializers get serializers => _client.serializers;

  ApiClient({
    String baseUrl = 'https://retail-api.staging.heirslifeassurance.com',
    // String baseUrl = 'http://10.0.2.2:8005',
    // String baseUrl = 'https://live-retail-api.prod.heirslifeassurance.com',
  }) {

    _client = Openapi(
      basePathOverride: baseUrl,
      interceptors: [
        LoadingInterceptor(),
        AuthInterceptor(),
        HealthResponseInterceptor(),
      ],
    );
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