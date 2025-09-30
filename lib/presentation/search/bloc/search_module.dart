import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/search_usecase.dart';
import 'package:social/presentation/search/bloc/search_presenter.dart';

class SearchModule {
  static Future<void> inject() async {
    injector.registerFactory<SearchPresenter>(
      () => SearchPresenter(injector.get<SearchUsecase>()),
    );
  }
}
