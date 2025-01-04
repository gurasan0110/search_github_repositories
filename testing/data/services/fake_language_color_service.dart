import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/services/language_color_service/language_color_service.dart';

class FakeLanguageColorService implements LanguageColorService {
  const FakeLanguageColorService();

  @override
  Future<Response<String>> getLanguageColors() {
    final data = '''
    {
      "Dart": {
        "color": "#00B4AB",
        "url": "https://github.com/trending?l=Dart"
      },
      "ASL": {
        "color": null,
        "url": "https://github.com/trending?l=ASL"
      }
    }
    ''';

    final response = Response(data: data, requestOptions: RequestOptions());
    return Future.value(response);
  }
}
