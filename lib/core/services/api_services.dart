import 'dart:io';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:social/core/constants/api_config.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
part 'api_services.g.dart';

@RestApi()
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) = _ApiServices;
  @POST(ApiConfig.register)
  Future<AuthResponse> callAPIRegister({
    @Body() required RegisterRequest request,
  });
  @POST(ApiConfig.login)
  Future<AuthResponse> callAPILogin({@Body() required LoginRequest request});

  @GET(ApiConfig.me)
  Future<ProfileResponse> callAPIProfile();

  @POST(ApiConfig.updateAvatar)
  @MultiPart()
  @Headers(<String, dynamic>{'Content-Type': 'multipart/form-data'})
  Future<ProfileResponse> updateAvatarProfile({
    @Part(name: 'avatar') required File file,
  });
  @POST(ApiConfig.updateBanner)
  @MultiPart()
  @Headers(<String, dynamic>{'Content-Type': 'multipart/form-data'})
  Future<ProfileResponse> updateBannerProfile({
    @Part(name: 'banner') required File file,
  });
  @PUT(ApiConfig.updateMe)
  Future<ProfileResponse> updateMeProfile({
    @Body() required Map<String, dynamic> body,
  });
}
