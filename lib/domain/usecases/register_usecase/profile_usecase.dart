import 'dart:io';

import 'package:dio/dio.dart';
import 'package:social/core/injector/injector.dart';
import 'package:social/data/models/response/profile/profile_response.dart';
import 'package:social/domain/repo/profile_repository.dart';

abstract class FutureUsecase<Input, Output> {
  Future<Output> run();
}

class ProfileUsecase extends FutureUsecase<String, ProfileResponse> {
  @override
  Future<ProfileResponse> run() =>
      injector.get<ProfileRepository>().getProfile();
  @override
  Future<ProfileResponse> callUpdateAvatar(File file) =>
      injector.get<ProfileRepository>().updateAvatar(file);
}
