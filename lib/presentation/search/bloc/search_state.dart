import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/search/search_response.dart';

part 'search_state.freezed.dart';

enum SearchStatus {
  initial,
  submissionInProgress,
  submissionSuccess,
  submissionFailure,
}

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchStatus.initial) SearchStatus status,
    SearchResponse? searchResponse,
    String? errorMessage,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
    status: SearchStatus.initial,
    searchResponse: null,
    errorMessage: null,
  );
}
