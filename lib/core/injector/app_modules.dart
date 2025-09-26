import 'package:social/core/injector/imports.dart';
import 'package:social/domain/usecases/post_usecase.dart';

class AppModules {
  static Future<void> inject() async {
    // local_storage_token
    injector.registerLazySingleton<LocalStorageService>(
      () => LocalStorageService(),
    );
    injector.registerLazySingleton<ApiServices>(
      () => ApiServices(injector.get<Dio>()),
    );
    // register
    injector.registerLazySingleton<RegisterUsecase>(() => RegisterUsecase());
    injector.registerLazySingleton<RegisterRepository>(
      () => RegisterRepositoryImpl(injector.get<ApiServices>()),
    );
    // login
    injector.registerLazySingleton<LoginUsecase>(() => LoginUsecase());
    injector.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(injector.get<ApiServices>()),
    );
    // profile
    injector.registerLazySingleton<ProfileUsecase>(() => ProfileUsecase());
    injector.registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(injector.get<ApiServices>()),
    );
    // profile change
    injector.registerLazySingleton<ProfileChangeUsecase>(
      () => ProfileChangeUsecase(),
    );
    injector.registerLazySingleton<ProfileChangeRepository>(
      () => ProfileChangeRepositoryImpl(injector.get<ApiServices>()),
    );
    // profile change password
    injector.registerLazySingleton<ProfileChangePasswordUsecase>(
      () => ProfileChangePasswordUsecase(),
    );
    injector.registerLazySingleton<ProfileChangePasswordRepository>(
      () => ProfileChangePasswordRepositoryImpl(injector.get<ApiServices>()),
    );

    // refresh token
    injector.registerLazySingleton<RefreshUsecase>(() => RefreshUsecase());
    injector.registerLazySingleton<RefreshRepository>(
      () => RefreshRepositoryImpl(
        injector.get<ApiServices>(),
        injector.get<LocalStorageService>(),
      ),
    );

    // forgot
    injector.registerLazySingleton<ForgotUsecase>(() => ForgotUsecase());
    injector.registerLazySingleton<ForgotRepository>(
      () => ForgotRepositoryImpl(injector.get<ApiServices>()),
    );
    // posts
    injector.registerLazySingleton<CreatePostUsecase>(
      () => CreatePostUsecase(),
    );
    injector.registerLazySingleton<GetPostsUsecase>(() => GetPostsUsecase());
    injector.registerLazySingleton<LikePostUsecase>(() => LikePostUsecase());
    injector.registerLazySingleton<PostRepository>(
      () => PostRepositoryImpl(injector.get<ApiServices>()),
    );
    injector.registerLazySingleton<CommentPostUsecase>(
      () => CommentPostUsecase(),
    );
    injector.registerLazySingleton<Dio>(() {
      final dio = Dio();
      dio.options.baseUrl = ApiConfig.baseUrl;
      dio.options.connectTimeout = Duration(seconds: 60);
      dio.options.sendTimeout = Duration(seconds: 60);
      dio.options.receiveTimeout = Duration(seconds: 60);
      dio.options.headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };
      dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            final token =
                await injector.get<LocalStorageService>().getToken() ?? '';
            if (token.isNotEmpty) {
              options.headers['Authorization'] = 'Bearer $token';
            }
            return handler.next(options);
          },
          onError: (DioException e, handler) async {
            if (e.response?.statusCode == 401) {
              try {
                final refreshUsecase = injector.get<RefreshUsecase>();
                final refreshTokenResponse = await refreshUsecase.run();

                final newToken = refreshTokenResponse!.content.token;
                final expiresIn = refreshTokenResponse.content.expiresIn;
                await injector.get<LocalStorageService>().saveToken(
                  newToken,
                  expiresIn,
                );
                final req = e.requestOptions;
                req.headers['Authorization'] = 'Bearer $newToken';

                final cloneResponse = await dio.fetch(req);
                return handler.resolve(cloneResponse);
              } catch (e) {
                injector.get<LocalStorageService>().clearToken();
              }
            }
            return handler.next(e);
          },
        ),
      );
      dio.interceptors.add(
        LogInterceptor(
          request: true,
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: true,
          error: true,
        ),
      );
      return dio;
    });
  }
}
