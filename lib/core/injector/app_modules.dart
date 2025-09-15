import 'package:dio/dio.dart' hide Headers;
import 'package:social/core/constants/api_config.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/services/api_services.dart';
import 'package:social/core/services/local_storage_service.dart';
import 'package:social/data/repo_impl/forgot_repository_impl.dart';
import 'package:social/data/repo_impl/login_repository_impl.dart';
import 'package:social/data/repo_impl/profile_change_password_repository_impl.dart';
import 'package:social/data/repo_impl/profile_change_respository_impl.dart';
import 'package:social/data/repo_impl/profile_repository_impl.dart';
import 'package:social/data/repo_impl/refresh_token_repository_impl.dart';
import 'package:social/data/repo_impl/register_repository_impl.dart';
import 'package:social/domain/repo/forgot_repository.dart';
import 'package:social/domain/repo/login_repository.dart';
import 'package:social/domain/repo/profile_change_password_repository.dart';
import 'package:social/domain/repo/profile_change_repository.dart';
import 'package:social/domain/repo/profile_repository.dart';
import 'package:social/domain/repo/refresh_repository.dart';
import 'package:social/domain/repo/register_repository.dart';
import 'package:social/domain/usecases/forgot_usecase.dart';
import 'package:social/domain/usecases/login_usecase.dart';
import 'package:social/domain/usecases/profile_change_password_usecase.dart';
import 'package:social/domain/usecases/profile_change_usecase.dart';
import 'package:social/domain/usecases/profile_usecase.dart';
import 'package:social/domain/usecases/refresh_token_usescase.dart';
import 'package:social/domain/usecases/register_usecase.dart';

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
