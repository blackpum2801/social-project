import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request.freezed.dart';
part 'profile_request.g.dart';

@freezed
sealed class ProfileRequest with _$ProfileRequest {
  const factory ProfileRequest({
    String? name,
    @JsonKey(name: 'nick_name') String? nickName,
    String? intro,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    String? gender,
    String? phoneNumber,
    String? avatar,
    String? banner,
  }) = _ProfileRequest;

  factory ProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileRequestFromJson(json);
}
