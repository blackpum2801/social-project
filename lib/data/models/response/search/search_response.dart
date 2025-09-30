import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:social/data/models/response/user/user_response.dart';

part 'search_response.freezed.dart';
part 'search_response.g.dart';

@freezed
sealed class SearchResponse with _$SearchResponse {
  const factory SearchResponse({
    required List<String> message,
    required List<UserResponse> content,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}
