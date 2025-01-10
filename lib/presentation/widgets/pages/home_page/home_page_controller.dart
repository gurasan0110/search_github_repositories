import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/application/services/repository_service/default_repository_service.dart';
import 'package:search_github_repositories/application/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/application/services/search_history_service/default_search_history_service.dart';
import 'package:search_github_repositories/application/services/search_history_service/search_history_service.dart';
import 'package:search_github_repositories/domain/models/order.dart';
import 'package:search_github_repositories/domain/models/repository.dart';
import 'package:search_github_repositories/domain/models/search_history.dart';
import 'package:search_github_repositories/domain/models/sort.dart';
import 'package:search_github_repositories/presentation/widgets/pages/home_page/home_page_state.dart';

part 'home_page_controller.g.dart';

@riverpod
class HomePageController extends _$HomePageController {
  HomePageController({
    RepositoryService? repositoryService,
    SearchHistoryService? searchHistoryService,
  })  : _repositoryService = repositoryService ?? DefaultRepositoryService(),
        _searchHistoryService =
            searchHistoryService ?? DefaultSearchHistoryService();

  final RepositoryService _repositoryService;
  final SearchHistoryService _searchHistoryService;

  StreamSubscription<List<SearchHistory>>? _subscription;

  @override
  HomePageState build() => HomePageState();

  Future<void> setSortAndOrder({
    required Sort sort,
    required Order order,
  }) async {
    state = state.copyWith.queryParameters(sort: sort, order: order);
    await searchFirstPageRepositories();
  }

  void setTempSortAndOrder({required Sort sort, required Order order}) {
    state = state.copyWith(tempSort: sort, tempOrder: order);
  }

  Future<void> cancel() async {
    await _subscription?.cancel();
  }

  Future<void> listen(String q) async {
    await cancel();

    _subscription = _searchHistoryService.watch(q).listen(
      (searchHistories) {
        state = state.copyWith(searchHistories: searchHistories);
      },
    );
  }

  Future<void> onTap() async {
    final queryParameters = state.queryParameters;
    setTempSortAndOrder(
      sort: queryParameters.sort,
      order: queryParameters.order,
    );

    await listen(queryParameters.q);
  }

  Future<void> viewOnSubmitted(String q) async {
    state = state.copyWith.queryParameters(
      q: q,
      sort: state.tempSort,
      order: state.tempOrder,
    );

    await Future.wait([
      _searchHistoryService.put(q),
      searchFirstPageRepositories(),
    ]);
  }

  Future<void> delete(int id) async {
    await _searchHistoryService.delete(id);
  }

  Future<void> searchFirstPageRepositories() async {
    if (state.paginationState.isLoadingFirstPage) return;
    state = state.copyWith.paginationState(isLoadingFirstPage: true);
    await _searchRepositories(1);
    state = state.copyWith.paginationState(isLoadingFirstPage: false);
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

  Future<void> _searchRepositories(int page) async {
    if (state.queryParameters.q.trim().isEmpty) return;

    final queryParameters = state.queryParameters.copyWith(page: page);

    try {
      final pagination = await _repositoryService.searchRepositories(
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
