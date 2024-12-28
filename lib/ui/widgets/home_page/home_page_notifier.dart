import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:search_github_repositories/logic/models/order.dart';
import 'package:search_github_repositories/logic/models/sort.dart';
import 'package:search_github_repositories/ui/widgets/home_page/home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  HomePageNotifier();

  @override
  HomePageState build() {
    return HomePageState();
  }

  void setQ({required String q}) {
    state = state.copyWith.queryParameters(q: q);
  }

  void setSort({required Sort sort}) {
    state = state.copyWith.queryParameters(sort: sort);
  }

  void setOrder({required Order order}) {
    state = state.copyWith.queryParameters(order: order);
  }
}
