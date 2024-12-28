import 'package:dio/dio.dart';

class DefaultDio with DioMixin implements Dio {
  DefaultDio();

  @override
  BaseOptions get options {
    final baseUrl = 'https://api.github.com';
    final headers = {'accept': 'application/vnd.github+json'};
    return BaseOptions(baseUrl: baseUrl, headers: headers);
  }

  @override
  HttpClientAdapter get httpClientAdapter {
    return HttpClientAdapter();
  }
}
