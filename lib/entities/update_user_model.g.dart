// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserModelImpl _$$UpdateUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserModelImplToJson(
        _$UpdateUserModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      userId: json['user_id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      profilePicture: json['profile_picture'] as String?,
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'profile_picture': instance.profilePicture,
      'role': instance.role,
    };
