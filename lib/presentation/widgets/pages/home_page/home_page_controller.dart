import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/application/services/repository_service/default_repository_service.dart';
import 'package:search_github_repositories/application/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/domain/models/order.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/domain/models/sort.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/home_page_state.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  HomePageController({
    RepositoryService? service,
  }) : _service = service ?? DefaultRepositoryService();

  final RepositoryService _service;

  @override
  HomePageState build() => HomePageState();

  Future<void> setQ(String q) async {
    state = state.copyWith.queryParameters(q: q);
    await _searchFirstPageRepositories();
  }

  Future<void> setSortAndOrder(Sort sort, Order order) async {
    state = state.copyWith.queryParameters(sort: sort, order: order);
    await _searchFirstPageRepositories();
  }

  Future<void> searchNextPageRepositories() async {
    if (state.paginationState.isLoadingNextPage) return;

    final page = state.queryParameters.page + 1;
    if (state.paginationState.pagination!.maxPage < page) return;

    state = state.copyWith.paginationState(isLoadingNextPage: true);
    await _searchRepositories(page);
    state = state.copyWith.paginationState(isLoadingNextPage: false);
  }

  Future<void> researchFirstPageRepositories() => _searchRepositories(1);

  Future<void> _searchFirstPageRepositories() async {
    if (state.paginationState.isLoadingFirstPage) return;
    state = state.copyWith.paginationState(isLoadingFirstPage: true);
    await _searchRepositories(1);
    state = state.copyWith.paginationState(isLoadingFirstPage: false);
  }

  Future<void> _searchRepositories(int page) async {
    if (state.queryParameters.q.trim().isEmpty) return;

    final queryParameters = state.queryParameters.copyWith(page: page);

    try {
      final pagination = await _service.searchRepositories(
        queryParameters.toJson(),
      );

      final paginationState = state.paginationState;
      final repositories = paginationState.pagination?.items;
      final oldItems = page == 1 ? <Repository>[] : repositories!;
      final items = oldItems + pagination.items;
      final newPagination = pagination.copyWith(items: items);

      state = state.copyWith(
        paginationState: paginationState.copyWith(pagination: newPagination),
        queryParameters: queryParameters,
      );
    } on Exception catch (exception) {
      state = state.copyWith.paginationState(exception: exception);
    }
  }
}
