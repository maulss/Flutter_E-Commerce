// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterModel with _$RegisterModel {
  const factory RegisterModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") Data? data,
  }) = _RegisterModel;

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "user_id") String? userId,
    @JsonKey(name: "name") dynamic name,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "phone_number") String? phoneNumber,
    @JsonKey(name: "address") dynamic address,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "profile_picture") dynamic profilePicture,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
