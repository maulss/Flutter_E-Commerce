// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterModelImpl _$$RegisterModelImplFromJson(Map<String, dynamic> json) =>
    _$RegisterModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterModelImplToJson(_$RegisterModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userId: json['user_id'] as String?,
      name: json['name'],
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'],
      role: json['role'] as String?,
      profilePicture: json['profile_picture'],
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'role': instance.role,
      'profile_picture': instance.profilePicture,
    };
