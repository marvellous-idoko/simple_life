import 'package:dio/dio.dart';
import 'package:simple_life/services/global_loader.dart';

/// Shows [GlobalLoader] for each in-flight request unless
/// `RequestOptions.extra['hideGlobalLoader'] == true`.
class LoadingInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    if (options.extra['hideGlobalLoader'] != true) {
      GlobalLoader.instance.show();
    }
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    _hideIfNeeded(response.requestOptions);
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _hideIfNeeded(err.requestOptions);
    handler.next(err);
  }

  void _hideIfNeeded(RequestOptions options) {
    if (options.extra['hideGlobalLoader'] != true) {
      GlobalLoader.instance.hide();
    }
  }
}