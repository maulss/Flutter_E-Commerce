// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  const factory UpdateUserModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _UpdateUserModel;

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "profile_picture") String? profilePicture,
    @JsonKey(name: "role") String? role,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
