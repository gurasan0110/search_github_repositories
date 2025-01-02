import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/sort.dart';

part 'get_search_repositories_query_parameters.freezed.dart';
part 'get_search_repositories_query_parameters.g.dart';

@Freezed(toJson: true)
class GetSearchRepositoriesQueryParameters
    with _$GetSearchRepositoriesQueryParameters {
  const factory GetSearchRepositoriesQueryParameters({
    @Default('') String q,
    @Default(Sort.bestMatch) Sort sort,
    @Default(Order.desc) Order order,
    @Default(1) int page,
  }) = _GetSearchRepositoriesQueryParameters;
}
