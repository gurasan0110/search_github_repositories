import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String login,
    required String avatarUrl,
    required String type,
  }) = _Owner;

  factory Owner.fromJson(Map<String, Object?> json) => _$OwnerFromJson(json);
}
