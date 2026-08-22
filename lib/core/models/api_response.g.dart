// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) => ApiResponse(
  statusCode: (json['code'] as num).toInt(),
  status: json['status'] as String,
  message: json['msg'] as String,
  data: json['data'],
);
