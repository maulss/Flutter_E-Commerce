// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "name") dynamic name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: "address") dynamic address,
    @JsonKey(name: "profile_picture") dynamic profilePicture,
    @JsonKey(name: "role") String? role,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
