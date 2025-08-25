import 'package:dio/dio.dart';
import 'package:social/core/constants/api_config.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/core/services/api_services.dart';
import 'package:social/data/repo_impl/login_repository_impl.dart';
import 'package:social/data/repo_impl/register_repository_impl.dart';
import 'package:social/domain/repo/login_repository.dart';
import 'package:social/domain/repo/register_repository.dart';
import 'package:social/domain/usecases/register_usecase/login_usecase.dart';
import 'package:social/domain/usecases/register_usecase/register_usecase.dart';

class AppModules {
  static Future<void> inject() async {
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
