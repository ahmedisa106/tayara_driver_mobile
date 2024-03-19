
import 'dart:developer';

import 'package:dio/dio.dart';

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST:: ${options.uri} and Body::${options.data}');
    log('Header:: ${options.headers}');
    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE:: Status code is: ${response.statusCode} response is: ${response.data}');

    return handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('ERROR::$err');
    return handler.next(err);
  }
}
