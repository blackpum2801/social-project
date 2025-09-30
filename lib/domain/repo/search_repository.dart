import 'package:social/data/models/response/search/search_response.dart';

abstract class SearchRepository {
  Future<SearchResponse> searchUsers(String keyword);
}
