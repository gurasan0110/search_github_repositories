import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/owner/owner.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String name,
    Owner? owner,
  }) = _Repository;

  factory Repository.fromJson(Map<String, Object?> json) =>
      _$RepositoryFromJson(json);
}
