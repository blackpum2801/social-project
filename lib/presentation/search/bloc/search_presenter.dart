import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social/core/errors/api_error_handler.dart';
import 'package:social/domain/usecases/search_usecase.dart';
import 'package:social/presentation/search/bloc/search_state.dart';

class SearchPresenter extends Cubit<SearchState> {
  final SearchUsecase _searchUsecase;
  SearchPresenter(this._searchUsecase) : super(SearchState.initial());

  Future<void> searchUsers(String keyword) async {
    emit(state.copyWith(status: SearchStatus.submissionInProgress));
    try {
      final res = await _searchUsecase.run(keyword);
      emit(
        state.copyWith(
          status: SearchStatus.submissionSuccess,
          searchResponse: res,
        ),
      );
    } catch (e) {
      final apiError = ApiErrorHandler.handle(e);
      emit(
        state.copyWith(
          status: SearchStatus.submissionFailure,
          errorMessage: apiError.message,
        ),
      );
    }
  }
}
