import 'package:freezed_annotation/freezed_annotation.dart';

enum OwnerType {
  @JsonValue('User')
  user,
  @JsonValue('Organization')
  organization,
}
