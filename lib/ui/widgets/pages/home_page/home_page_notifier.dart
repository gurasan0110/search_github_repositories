import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/default_repository_repository.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/repository.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  HomePageNotifier();

  final _repository = DefaultRepositoryRepository();

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

  Future<void> researchFirstPageRepositories() async {
    await _searchRepositories(1);
  }

  Future<void> _searchFirstPageRepositories() async {
    if (state.paginationState.isLoadingFirstPage) return;
    state = state.copyWith.paginationState(isLoadingFirstPage: true);
    await _searchRepositories(1);
    state = state.copyWith.paginationState(isLoadingFirstPage: false);
  }

  Future<void> _searchRepositories(int page) async {
    if (state.queryParameters.q.isEmpty) return;

    state = state.copyWith.queryParameters(page: page);

    try {
      final pagination = await _repository.searchRepositories(
        state.queryParameters,
      );

      final repositories = state.paginationState.pagination?.items;
      final oldItems = page == 1 ? <Repository>[] : repositories!;
      final items = oldItems + pagination.items;
      final newPagination = pagination.copyWith(items: items);
      state = state.copyWith.paginationState(pagination: newPagination);
    } on Exception catch (exception) {
      state = state.copyWith.paginationState(exception: exception);
    }
  }
}
