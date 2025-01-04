import 'package:dio/dio.dart';
import 'package:search_github_repositories/data/models/get_search_repositories_query_parameters.dart';
import 'package:search_github_repositories/data/services/repository_service/repository_service.dart';
import 'package:search_github_repositories/util/types.dart';

class FakeRepositoryService implements RepositoryService {
  const FakeRepositoryService();

  @override
  Future<Response<Json>> getSearchRepositories(
    GetSearchRepositoriesQueryParameters queryParameters,
  ) {
    final data = {
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

    final response = Response(data: data, requestOptions: RequestOptions());
    return Future.value(response);
  }
}
