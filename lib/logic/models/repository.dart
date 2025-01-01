import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/owner.dart';
import 'package:search_github_repositories/util/converters/stargazers_count_converter.dart';
import 'package:search_github_repositories/util/converters/updated_at_converter.dart';
import 'package:search_github_repositories/util/types/json.dart';

part 'repository.freezed.dart';
part 'repository.g.dart';

@freezed
class Repository with _$Repository {
  const factory Repository({
    required String fullName,
    Owner? owner,
    required Uri htmlUrl,
    String? description,
    @UpdatedAtConverter() required String updatedAt,
    @StargazersCountConverter() required String stargazersCount,
    String? language,
    required bool archived,
  }) = _Repository;

  factory Repository.fromJson(Json json) => _$RepositoryFromJson(json);
}
