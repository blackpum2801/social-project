import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:social/core/constants/api_config.dart';
import 'package:social/data/models/request/register_request.dart';
import 'package:social/data/models/response/register/register_response.dart';
part 'api_services.g.dart';

@RestApi()
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;
  @POST(ApiConfig.register)
  Future<RegisterResponse> callAPIRegister({
    @Body() required RegisterRequest request,
  });
}
