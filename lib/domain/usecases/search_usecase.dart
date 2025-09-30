import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/search/search_response.dart';
import 'package:social/domain/repo/search_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run(Input input);
}

class SearchUsecase extends FutureUsecase<String, SearchResponse> {
  @override
  Future<SearchResponse> run(String keyword) =>
      injector.get<SearchRepository>().searchUsers(keyword);
}
