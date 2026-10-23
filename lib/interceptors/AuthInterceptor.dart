import 'package:dio/dio.dart';
import 'package:simple_life/services/auth_storage.dart';

class AuthInterceptor extends Interceptor {
  // Replace with your token storage mechanism (Secure Storage, SharedPreferences, etc.)
  Future<String?> _getSavedToken() async {
    // return "YOUR_ACCESS_TOKEN"; 
    return (await AuthStorageService().getToken())?['token'] ?? '';
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // 1. Fetch token dynamically
    final token = await _getSavedToken();

    // 2. Inject authorization headers if token exists
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    // 3. Forward the request to the next block or server
    // return handler.next(options);
    print(options.headers);
    super.onRequest(options, handler);
    
  }


  // @override
  // void onRequest(
  //     RequestOptions options,
  //     RequestInterceptorHandler handler,
  //     ) {
  //   final metadataAuthInfo = getAuthInfo(options, (secure) => (secure['type'] == 'http' && secure['scheme']?.toLowerCase() == 'basic') || secure['type'] == 'basic');
  //   for (final info in metadataAuthInfo) {
  //     final authName = info['name'] as String;
  //     final basicAuthInfo = authInfo[authName];
  //     if (basicAuthInfo != null) {
  //       final basicAuth = 'Basic ${base64Encode(utf8.encode('${basicAuthInfo.username}:${basicAuthInfo.password}'))}';
  //       options.headers['Authorization'] = basicAuth;
  //       break;
  //     }
  //   }
  //   super.onRequest(options, handler);
  // }
}