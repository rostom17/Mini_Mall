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

Map<String, dynamic> _$ApiResponseToJson(ApiResponse instance) =>
    <String, dynamic>{
      'code': instance.statusCode,
      'status': instance.status,
      'msg': instance.message,
      'data': instance.data,
    };
