import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:search_github_repositories/gen/strings.g.dart';

class UpdatedAtConverter implements JsonConverter<String, String> {
  const UpdatedAtConverter();

  @override
  String fromJson(String json) {
    final formatter = DateFormat(t.updatedAtPattern);
    final dateTime = DateTime.parse(json);
    return formatter.format(dateTime);
  }

  @override
  String toJson(String object) => throw UnimplementedError();
}
