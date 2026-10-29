import 'dart:convert';
import 'package:dio/dio.dart';

class HealthResponseInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.requestOptions.path == '/insured-persons' &&
        response.data is List) {
      for (final item in response.data as List) {
        if (item is! Map<String, dynamic>) continue;

        final health = item['health'];
        if (health is String) {
          if (health.trim().isEmpty || health == 'null') {
            item['health'] = null;
          } else {
            final decoded = jsonDecode(health);
            item['health'] = decoded is Map ? decoded : null;
          }
        }
      }
    }

    handler.next(response);
  }
}