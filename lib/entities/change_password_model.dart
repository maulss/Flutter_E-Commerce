// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_model.freezed.dart';
part 'change_password_model.g.dart';

@freezed
class ChangePasswordModel with _$ChangePasswordModel {
  const factory ChangePasswordModel({
    @JsonKey(name: "success") bool? success,
    @JsonKey(name: "message") String? message,
  }) = _ChangePasswordModel;

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);
}
