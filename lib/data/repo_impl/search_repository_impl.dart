import 'package:social/core/services/api_services.dart';
import 'package:social/data/models/response/search/search_response.dart';
import 'package:social/domain/repo/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository {
  final ApiServices _apiServices;
  SearchRepositoryImpl(this._apiServices);
  @override
  Future<SearchResponse> searchUsers(String keyword) async {
    final res = await _apiServices.searchUsers(keyword: keyword);
    return res;
  }
}
