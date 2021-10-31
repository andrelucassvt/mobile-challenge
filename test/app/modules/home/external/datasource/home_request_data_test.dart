import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_challenge/app/modules/home/external/datasource/home_request_data.dart';
import 'package:mobile_challenge/app/shared/util/dio_options.dart';
import 'package:mockito/mockito.dart';

class  DioMock extends Mock implements Dio {}

main() {
  final dio = DioMock();

  final datasource = HomeService(dio);

  test('Testar retorno do dio', () async {
    when(dio.get(any)).thenAnswer((_) async =>
        Response(
          data: jsonDecode(listJson), 
          statusCode: 200, 
          requestOptions: null
        )
    );

    final future = datasource.getUsers();
    expect(future, completes);
  });
}


String listJson = ''' 
[
  {
    "login": "mojombo",
    "id": 1,
    "node_id": "MDQ6VXNlcjE=",
    "avatar_url": "https://avatars.githubusercontent.com/u/1?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/mojombo",
    "html_url": "https://github.com/mojombo",
    "followers_url": "https://api.github.com/users/mojombo/followers",
    "following_url": "https://api.github.com/users/mojombo/following{/other_user}",
    "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
    "organizations_url": "https://api.github.com/users/mojombo/orgs",
    "repos_url": "https://api.github.com/users/mojombo/repos",
    "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
    "received_events_url": "https://api.github.com/users/mojombo/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "defunkt",
    "id": 2,
    "node_id": "MDQ6VXNlcjI=",
    "avatar_url": "https://avatars.githubusercontent.com/u/2?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/defunkt",
    "html_url": "https://github.com/defunkt",
    "followers_url": "https://api.github.com/users/defunkt/followers",
    "following_url": "https://api.github.com/users/defunkt/following{/other_user}",
    "gists_url": "https://api.github.com/users/defunkt/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/defunkt/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/defunkt/subscriptions",
    "organizations_url": "https://api.github.com/users/defunkt/orgs",
    "repos_url": "https://api.github.com/users/defunkt/repos",
    "events_url": "https://api.github.com/users/defunkt/events{/privacy}",
    "received_events_url": "https://api.github.com/users/defunkt/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "pjhyett",
    "id": 3,
    "node_id": "MDQ6VXNlcjM=",
    "avatar_url": "https://avatars.githubusercontent.com/u/3?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/pjhyett",
    "html_url": "https://github.com/pjhyett",
    "followers_url": "https://api.github.com/users/pjhyett/followers",
    "following_url": "https://api.github.com/users/pjhyett/following{/other_user}",
    "gists_url": "https://api.github.com/users/pjhyett/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/pjhyett/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/pjhyett/subscriptions",
    "organizations_url": "https://api.github.com/users/pjhyett/orgs",
    "repos_url": "https://api.github.com/users/pjhyett/repos",
    "events_url": "https://api.github.com/users/pjhyett/events{/privacy}",
    "received_events_url": "https://api.github.com/users/pjhyett/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "wycats",
    "id": 4,
    "node_id": "MDQ6VXNlcjQ=",
    "avatar_url": "https://avatars.githubusercontent.com/u/4?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/wycats",
    "html_url": "https://github.com/wycats",
    "followers_url": "https://api.github.com/users/wycats/followers",
    "following_url": "https://api.github.com/users/wycats/following{/other_user}",
    "gists_url": "https://api.github.com/users/wycats/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/wycats/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/wycats/subscriptions",
    "organizations_url": "https://api.github.com/users/wycats/orgs",
    "repos_url": "https://api.github.com/users/wycats/repos",
    "events_url": "https://api.github.com/users/wycats/events{/privacy}",
    "received_events_url": "https://api.github.com/users/wycats/received_events",
    "type": "User",
    "site_admin": false
  },
  {
    "login": "ezmobius",
    "id": 5,
    "node_id": "MDQ6VXNlcjU=",
    "avatar_url": "https://avatars.githubusercontent.com/u/5?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/ezmobius",
    "html_url": "https://github.com/ezmobius",
    "followers_url": "https://api.github.com/users/ezmobius/followers",
    "following_url": "https://api.github.com/users/ezmobius/following{/other_user}",
    "gists_url": "https://api.github.com/users/ezmobius/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/ezmobius/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/ezmobius/subscriptions",
    "organizations_url": "https://api.github.com/users/ezmobius/orgs",
    "repos_url": "https://api.github.com/users/ezmobius/repos",
    "events_url": "https://api.github.com/users/ezmobius/events{/privacy}",
    "received_events_url": "https://api.github.com/users/ezmobius/received_events",
    "type": "User",
    "site_admin": false
  }
]
''';