import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/owner.dart';
import 'package:search_github_repositories/util/types.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String fullName,
    Owner? owner,
    required Uri htmlUrl,
    String? description,
    required DateTime updatedAt,
    required int stargazersCount,
    String? language,
    required bool archived,
  }) = _Repository;

  factory Repository.fromJson(Json json) => _$RepositoryFromJson(json);
}
