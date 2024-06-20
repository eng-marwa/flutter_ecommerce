import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);
    dio ??= Dio()
      ..options.connectTimeout = timeOut
      ..options.receiveTimeout = timeOut
      ..interceptors.add(PrettyDioLogger(
          requestBody: true, requestHeader: true, responseHeader: true));
    return dio!;
  }
}
