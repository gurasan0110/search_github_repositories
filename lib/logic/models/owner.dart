import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/owner_type.dart';
import 'package:search_github_repositories/util/types/json.dart';

part 'owner.freezed.dart';
part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    required String avatarUrl,
    required OwnerType type,
  }) = _Owner;

  factory Owner.fromJson(Json json) => _$OwnerFromJson(json);
}
