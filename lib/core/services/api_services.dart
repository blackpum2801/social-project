import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:social/core/constants/api_config.dart';
import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';
part 'api_services.g.dart';

@RestApi()
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;
  @GET(ApiConfig.register)
  Future<RegisterResponse> callAPIRegister({
    @Query('email') required String email,
    @Query('password') required String password,
    @Query('password_confirmation') required String passwordConfirmation,
    @Query('name') required String name,
  });
}
