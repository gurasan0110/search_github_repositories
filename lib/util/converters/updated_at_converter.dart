import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class UpdatedAtConverter implements JsonConverter<String, String> {
  const UpdatedAtConverter();

  @override
  String fromJson(String json) {
    final formatter = DateFormat('y年M月d日');
    final dateTime = DateTime.parse(json);
    return formatter.format(dateTime);
  }

  @override
  String toJson(String object) => throw UnimplementedError();
}
