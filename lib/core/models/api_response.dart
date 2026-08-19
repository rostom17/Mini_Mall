import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class ApiResponse {
  @JsonKey(name: "code")
  final int statusCode;

  @JsonKey(name: "status")
  final String status;

  @JsonKey(name: "msg")
  final String message;

  @JsonKey(name: "data")
  final dynamic data;

  const ApiResponse({
    required this.statusCode,
    required this.status,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
