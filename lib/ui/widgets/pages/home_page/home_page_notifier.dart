import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/repository_repository.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/ui/widgets/pages/home_page/home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  HomePageNotifier();

  @override
  HomePageState build() {
    return HomePageState();
  }

  Future<void> setQ({required String q}) async {
    state = state.copyWith.queryParameters(q: q);
    await _searchRepositories();
  }

  Future<void> setSort({required Sort sort}) async {
    state = state.copyWith.queryParameters(sort: sort);
    await _searchRepositories();
  }

  Future<void> setOrder({required Order order}) async {
    state = state.copyWith.queryParameters(order: order);
    await _searchRepositories();
  }

  Future<void> _searchRepositories() async {
    if (state.repositories.isLoading) {
      return;
    }

    if (state.queryParameters.q.isEmpty) {
      return;
    }

    state = state.copyWith.repositories(isLoading: true);

    try {
      final repositories = await ref
          .watch(repositoryRepositoryProvider)
          .searchRepositories(queryParameters: state.queryParameters);
      state = state.copyWith.repositories(value: repositories);
    } on Exception catch (exception) {
      state = state.copyWith.repositories(exception: exception);
    } finally {
      state = state.copyWith.repositories(isLoading: false);
    }
  }
}
