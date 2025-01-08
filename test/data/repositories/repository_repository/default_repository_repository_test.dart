import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:search_github_repositories/data/repositories/repository_repository/default_repository_repository.dart';
import 'package:search_github_repositories/domain/models/owner_type.dart';
import 'package:search_github_repositories/domain/models/pagination.dart';
import 'package:search_github_repositories/domain/models/repository.dart';

import '../dio.mocks.dart';

void main() {
  group('DefaultRepositoryRepository', () {
    final dio = MockDio();
    final repository = DefaultRepositoryRepository(dio: dio);

    group('searchRepositories', () {
      const data = {
        'total_count': 40,
        'items': [
          {
            'full_name': 'dtrupenn/Tetris',
            'owner': {
              'avatar_url':
                  'https://secure.gravatar.com/avatar/e7956084e75f239de85d3a31bc172ace?d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png',
              'type': 'User',
            },
            'html_url': 'https://github.com/dtrupenn/Tetris',
            'description':
                'A C implementation of Tetris using Pennsim through LC4',
            'updated_at': '2013-01-05T17:58:47Z',
            'stargazers_count': 1,
            'language': 'Assembly',
            'archived': true,
          },
        ],
      };

      when(dio.get('/search/repositories', queryParameters: {})).thenAnswer(
        (_) => Future.value(Response(
          data: data,
          requestOptions: RequestOptions(),
        )),
      );

      late Pagination<Repository> pagination;

      setUpAll(
        () async => pagination = await repository.searchRepositories({}),
      );

      test('totalCountは40である', () => expect(pagination.totalCount, 40));

      test('items.lengthは1である', () => expect(pagination.items.length, 1));

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
        'updatedAtはDateTime型の2013-01-05T17:58:47Zである',
        () => expect(
          pagination.items[0].updatedAt,
          DateTime.parse('2013-01-05T17:58:47Z'),
        ),
      );

      test(
        'stargazersCountは1である',
        () => expect(pagination.items[0].stargazersCount, 1),
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
