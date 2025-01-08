import 'package:freezed_annotation/freezed_annotation.dart';

enum Sort {
  @JsonValue('best match')
  bestMatch,
  stars,
  forks,
  updated,
}
