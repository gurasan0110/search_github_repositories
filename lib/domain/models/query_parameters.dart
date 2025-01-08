import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_github_repositories/domain/models/order.dart';
import 'package:search_github_repositories/domain/models/sort.dart';

part 'query_parameters.freezed.dart';
part 'query_parameters.g.dart';

@Freezed(toJson: true)
class QueryParameters with _$QueryParameters {
  const factory QueryParameters({
    @Default('') String q,
    @Default(Sort.bestMatch) Sort sort,
    @Default(Order.desc) Order order,
    @Default(1) int page,
  }) = _QueryParameters;
}
