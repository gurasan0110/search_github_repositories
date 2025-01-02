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
  HomePageState build() {
    return HomePageState();
  }

  Future<void> setQ({required String q}) async {
    state = state.copyWith.queryParameters(q: q);
    await _searchFirstPageRepositories();
  }

  Future<void> setSortAndOrder(Sort sort, Order order) async {
    state = state.copyWith.queryParameters(sort: sort, order: order);
    await _searchFirstPageRepositories();
  }

  Future<void> searchNextPageRepositories() async {
    if (state.pagination.isLoadingNextPage) return;

    final page = state.queryParameters.page + 1;
    if (state.pagination.pagination!.maxPage < page) return;

    state = state.copyWith.pagination(isLoadingNextPage: true);
    await _searchRepositories(page);
    state = state.copyWith.pagination(isLoadingNextPage: false);
  }

  Future<void> researchFirstPageRepositories() async {
    await _searchRepositories(1);
  }

  Future<void> _searchFirstPageRepositories() async {
    if (state.pagination.isLoadingFirstPage) return;
    state = state.copyWith.pagination(isLoadingFirstPage: true);
    await _searchRepositories(1);
    state = state.copyWith.pagination(isLoadingFirstPage: false);
  }

  Future<void> _searchRepositories(int page) async {
    if (state.queryParameters.q.isEmpty) return;

    state = state.copyWith.queryParameters(page: page);

    try {
      final pagination = await _repository.searchRepositories(
        state.queryParameters,
      );

      final repositories = state.pagination.pagination?.items;
      final oldItems = page == 1 ? <Repository>[] : repositories!;
      final items = oldItems + pagination.items;
      final newPagination = pagination.copyWith(items: items);
      state = state.copyWith.pagination(pagination: newPagination);
    } on Exception catch (exception) {
      state = state.copyWith.pagination(exception: exception);
    }
  }
}
