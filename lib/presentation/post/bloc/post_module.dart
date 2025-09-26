import 'package:social/core/injector/injector.dart';
import 'package:social/domain/usecases/post_usecase.dart';
import 'package:social/presentation/post/bloc/post_presenter.dart';

class PostModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<PostPresenter>(
      () => PostPresenter(
        injector.get<CreatePostUsecase>(),
        injector.get<GetPostsUsecase>(),
        injector.get<LikePostUsecase>(),
        injector.get<CommentPostUsecase>(),
      ),
    );
  }
}
