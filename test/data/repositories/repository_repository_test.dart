import 'package:flutter_test/flutter_test.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/repositories/repository_repository.dart';
import 'package:search_github_repositories/logic/models/owner_type.dart';
import 'package:search_github_repositories/logic/models/pagination.dart';
import 'package:search_github_repositories/logic/models/repository.dart';

import '../../../testing/data/services/fake_repository_service.dart';

void main() {
  group('RepositoryRepository', () {
    final service = const FakeRepositoryService();
    final repository = RepositoryRepository(service: service);

    group('searchRepositories', () {
      late Pagination<Repository> pagination;

      setUp(() async {
        final queryParameters = const GetSearchRepositoriesQueryParameters();
        pagination = await repository.searchRepositories(queryParameters);
      });

      test('totalCountは40である', () => expect(pagination.totalCount, 40));

      test(
        'items.lengthは1である',
        () => expect(pagination.items.length, 1),
      );

      test(
        'fullNameはdtrupenn/Tetrisである',
        () => expect(pagination.items[0].fullName, 'dtrupenn/Tetris'),
      );

      test(
        'owner.avatarUrlはhttps://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.pngである',
        () => expect(
          pagination.items[0].owner!.avatarUrl,
          'https://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png',
        ),
      );

      test(
        'owner.typeはOwnerType型のuserである',
        () => expect(pagination.items[0].owner!.type, OwnerType.user),
      );

      test(
        'htmlUrlはUri型のhttps://github.com/dtrupenn/Tetrisである',
        () => expect(
          pagination.items[0].htmlUrl,
          Uri.parse('https://github.com/dtrupenn/Tetris'),
        ),
      );

      test(
        'descriptionはA C implementation of Tetris using Pennsim through LC4である',
        () => expect(
          pagination.items[0].description,
          'A C implementation of Tetris using Pennsim through LC4',
        ),
      );

      test(
        'updatedAtは2013年1月5日である',
        () => expect(pagination.items[0].updatedAt, '2013年1月5日'),
      );

      test(
        'stargazersCountはString型の1である',
        () => expect(pagination.items[0].stargazersCount, '1'),
      );

      test(
        'languageはAssemblyである',
        () => expect(pagination.items[0].language, 'Assembly'),
      );

      test(
        'archivedはtrueである',
        () => expect(pagination.items[0].archived, isTrue),
      );
    });
  });
}
