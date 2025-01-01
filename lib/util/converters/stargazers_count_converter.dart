import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class StargazersCountConverter implements JsonConverter<String, int> {
  const StargazersCountConverter();

  @override
  String fromJson(int json) {
    final formatter = NumberFormat.compact();
    formatter.maximumFractionDigits = 1;
    return formatter.format(json);
  }

  @override
  int toJson(String object) => throw UnimplementedError();
}
