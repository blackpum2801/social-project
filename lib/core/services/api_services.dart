import 'dart:io';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import 'package:social/core/constants/api_config.dart';
import 'package:social/data/models/request/forgot/forgot_request.dart';
import 'package:social/data/models/request/login/login_request.dart';
import 'package:social/data/models/request/posts/comment_request.dart';
import 'package:social/data/models/request/posts/like_post_request.dart';
import 'package:social/data/models/request/register/register_request.dart';
import 'package:social/data/models/response/auth/auth_response.dart';
import 'package:social/data/models/response/forgot/forgot_response.dart';
import 'package:social/data/models/response/posts/comment_response.dart';
import 'package:social/data/models/response/posts/create_post_response.dart';
import 'package:social/data/models/response/posts/like_post_response.dart';
import 'package:social/data/models/response/posts/post_response.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/data/models/response/refresh/refresh_response.dart';
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
  @POST(ApiConfig.refreshToken)
  Future<RefreshResponse> callAPIRefreshToken({
    @Body() required Map<String, dynamic> request,
  });
  @POST(ApiConfig.forgot)
  Future<ForgotResponse> callAPIForgot({
    @Body() required ForgotRequest request,
  });
  @PUT(ApiConfig.changePassword)
  Future<AuthResponse> calAPIChangePassword({
    @Body() required RegisterRequest request,
  });
  @POST(ApiConfig.createPost)
  @MultiPart()
  @Headers(<String, dynamic>{'Content-Type': 'multipart/form-data'})
  Future<CreatePostResponse> createPost({
    @Part(name: 'contents') required String contents,
    @Part(name: 'images[]') List<MultipartFile>? images,
  });
  @GET(ApiConfig.getPost)
  Future<PostResponse> getPosts();
  @POST(ApiConfig.likePost)
  Future<LikePostResponse> likePost({
    @Body() required LikePostRequest? request,
  });
  @POST(ApiConfig.commentPost)
  Future<CommentResponse> commentPost({
    @Body() required CommentRequest? request,
  });
}
