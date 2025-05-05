// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CancelResponseModel _$CancelResponseModelFromJson(Map<String, dynamic> json) {
  return _CancelResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CancelResponseModel {
  @JsonKey(name: "success")
  bool? get success => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelResponseModelCopyWith<CancelResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelResponseModelCopyWith<$Res> {
  factory $CancelResponseModelCopyWith(
          CancelResponseModel value, $Res Function(CancelResponseModel) then) =
      _$CancelResponseModelCopyWithImpl<$Res, CancelResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$CancelResponseModelCopyWithImpl<$Res, $Val extends CancelResponseModel>
    implements $CancelResponseModelCopyWith<$Res> {
  _$CancelResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancelResponseModelImplCopyWith<$Res>
    implements $CancelResponseModelCopyWith<$Res> {
  factory _$$CancelResponseModelImplCopyWith(_$CancelResponseModelImpl value,
          $Res Function(_$CancelResponseModelImpl) then) =
      __$$CancelResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "success") bool? success,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$CancelResponseModelImplCopyWithImpl<$Res>
    extends _$CancelResponseModelCopyWithImpl<$Res, _$CancelResponseModelImpl>
    implements _$$CancelResponseModelImplCopyWith<$Res> {
  __$$CancelResponseModelImplCopyWithImpl(_$CancelResponseModelImpl _value,
      $Res Function(_$CancelResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CancelResponseModelImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancelResponseModelImpl implements _CancelResponseModel {
  const _$CancelResponseModelImpl(
      {@JsonKey(name: "success") this.success,
      @JsonKey(name: "message") this.message});

  factory _$CancelResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "success")
  final bool? success;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'CancelResponseModel(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelResponseModelImplCopyWith<_$CancelResponseModelImpl> get copyWith =>
      __$$CancelResponseModelImplCopyWithImpl<_$CancelResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CancelResponseModel implements CancelResponseModel {
  const factory _CancelResponseModel(
          {@JsonKey(name: "success") final bool? success,
          @JsonKey(name: "message") final String? message}) =
      _$CancelResponseModelImpl;

  factory _CancelResponseModel.fromJson(Map<String, dynamic> json) =
      _$CancelResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "success")
  bool? get success;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CancelResponseModelImplCopyWith<_$CancelResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
